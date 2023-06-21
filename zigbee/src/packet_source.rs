use xilinx_dma::AxiDma;
use xilinx_dma::DmaBuffer;

use futuresdr::anyhow::Result;
use futuresdr::async_trait::async_trait;
use futuresdr::log::warn;
use futuresdr::macros::message_handler;
use futuresdr::runtime::buffer::zynq::BufferEmpty;
use futuresdr::runtime::buffer::zynq::WriterD2H;
use futuresdr::runtime::Block;
use futuresdr::runtime::BlockMeta;
use futuresdr::runtime::BlockMetaBuilder;
use futuresdr::runtime::Kernel;
use futuresdr::runtime::MessageIo;
use futuresdr::runtime::MessageIoBuilder;
use futuresdr::runtime::Pmt;
use futuresdr::runtime::StreamIo;
use futuresdr::runtime::StreamIoBuilder;
use futuresdr::runtime::WorkIo;

pub struct PacketSource {
    dma_d2h: AxiDma,
    dma_bufs: Vec<String>,
    output_buffers: Vec<BufferEmpty>,
    enable: bool,
}

impl PacketSource {
    pub fn new<S: Into<String>>(
        enable: bool,
        dma_d2h: impl AsRef<str>,
        dma_bufs: Vec<S>,
    ) -> Result<Block> {
        assert!(dma_bufs.len() > 1);
        let dma_bufs: _ = dma_bufs.into_iter().map(Into::into).collect();

        Ok(Block::new(
            BlockMetaBuilder::new("PacketSource").blocking().build(),
            StreamIoBuilder::new().build(),
            MessageIoBuilder::<Self>::new()
                .add_input("enable", Self::enable)
                .add_output("packet")
                .build(),
            PacketSource {
                dma_d2h: AxiDma::new(dma_d2h.as_ref())?,
                dma_bufs,
                output_buffers: Vec::new(),
                enable,
            },
        ))
    }

    #[message_handler]
    fn enable(
        &mut self,
        _io: &mut WorkIo,
        _mio: &mut MessageIo<Self>,
        _meta: &mut BlockMeta,
        p: Pmt,
    ) -> Result<Pmt> {
        match &p {
            Pmt::Bool(b) => {
                self.enable = *b;
            }
            _ => warn!("PacketSource::enable received unhandled Pmt {:?}", &p),
        }
        Ok(Pmt::Ok)
    }
}

#[inline]
fn o(sio: &mut StreamIo, id: usize) -> &mut WriterD2H {
    sio.output(id).try_as::<WriterD2H>().unwrap()
}

#[doc(hidden)]
#[async_trait]
impl Kernel for PacketSource {
    async fn init(
        &mut self,
        _sio: &mut StreamIo,
        _m: &mut MessageIo<Self>,
        _b: &mut BlockMeta,
    ) -> Result<()> {
        assert!(!self.dma_bufs.is_empty());

        for n in self.dma_bufs.iter() {
            let buffer = DmaBuffer::new(n)?;
            println!("dma buffer: {:?}", &buffer);
            self.output_buffers.push(BufferEmpty { buffer });
        }

        println!("dma: {:?}", &self.dma_d2h);
        println!("resetting dma");
        self.dma_d2h.reset();
        println!("init done");
        Ok(())
    }

    async fn work(
        &mut self,
        io: &mut WorkIo,
        sio: &mut StreamIo,
        mio: &mut MessageIo<Self>,
        _meta: &mut BlockMeta,
    ) -> Result<()> {
        if !self.enable {
            return Ok(());
        }

        self.output_buffers.extend(o(sio, 0).buffers());

        if self.output_buffers.is_empty() {
            return Ok(());

        } else {
            let outbuff = self.output_buffers.pop().unwrap().buffer;

            let size = outbuff.size();
            self.dma_d2h.start_d2h(&outbuff, size).unwrap();
            self.dma_d2h.wait_d2h().unwrap();
            let actual = self.dma_d2h.size_d2h();

            let slice = &outbuff.slice::<u8>()[0..actual];
            let pmt = Pmt::Blob(slice.to_vec());
            mio.post(0, pmt).await;

            if !self.output_buffers.is_empty() {
                io.call_again = true;
            }
        }

        Ok(())
    }
}
