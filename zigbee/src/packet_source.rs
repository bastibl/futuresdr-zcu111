use xilinx_dma::AxiDma;
use xilinx_dma::DmaBuffer;

use futuresdr::anyhow::Result;
use futuresdr::async_trait::async_trait;
use futuresdr::log::warn;
use futuresdr::macros::message_handler;
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
    dma_buf: DmaBuffer,
    enable: bool,
}

impl PacketSource {
    pub fn new(
        enable: bool,
        dma_d2h: impl AsRef<str>,
        dma_buf: impl AsRef<str>,
    ) -> Result<Block> {
        let dma_buf = DmaBuffer::new(dma_buf.as_ref())?;

        Ok(Block::new(
            BlockMetaBuilder::new("PacketSource").blocking().build(),
            StreamIoBuilder::new().build(),
            MessageIoBuilder::<Self>::new()
                .add_input("enable", Self::enable)
                .add_output("packet")
                .build(),
            PacketSource {
                dma_d2h: AxiDma::new(dma_d2h.as_ref())?,
                dma_buf,
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

#[doc(hidden)]
#[async_trait]
impl Kernel for PacketSource {
    async fn init(
        &mut self,
        _sio: &mut StreamIo,
        _m: &mut MessageIo<Self>,
        _b: &mut BlockMeta,
    ) -> Result<()> {
        println!("dma: {:?}", &self.dma_d2h);
        self.dma_d2h.reset();
        Ok(())
    }

    async fn work(
        &mut self,
        io: &mut WorkIo,
        _sio: &mut StreamIo,
        mio: &mut MessageIo<Self>,
        _meta: &mut BlockMeta,
    ) -> Result<()> {
        if !self.enable {
            println!("packet src not enabled");
            return Ok(());
        }

        let buf = &self.dma_buf;
        let size = buf.size();
        self.dma_d2h.start_d2h(buf, size / 8).unwrap();
        self.dma_d2h.wait_d2h().unwrap();
        let actual = self.dma_d2h.size_d2h();

        let slice = &buf.slice::<u8>()[0..actual];
        let pmt = Pmt::Blob(Vec::from_iter(slice.iter().cloned()));
        mio.post(0, pmt).await;

        io.call_again = true;

        Ok(())
    }
}
