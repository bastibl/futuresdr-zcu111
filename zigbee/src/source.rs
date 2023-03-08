use std::marker::PhantomData;
use xilinx_dma::AxiDma;
use xilinx_dma::DmaBuffer;

use futuresdr::anyhow::Result;
use futuresdr::async_trait::async_trait;
use futuresdr::runtime::buffer::zynq::BufferEmpty;
use futuresdr::runtime::buffer::zynq::BufferFull;
use futuresdr::runtime::buffer::zynq::WriterD2H;
use futuresdr::runtime::Block;
use futuresdr::runtime::BlockMeta;
use futuresdr::runtime::BlockMetaBuilder;
use futuresdr::runtime::Kernel;
use futuresdr::runtime::MessageIo;
use futuresdr::runtime::MessageIoBuilder;
use futuresdr::runtime::StreamIo;
use futuresdr::runtime::StreamIoBuilder;
use futuresdr::runtime::WorkIo;

pub struct Source<O>
where
    O: std::fmt::Debug + Send + 'static,
{
    dma_d2h: AxiDma,
    dma_bufs: Vec<String>,
    output_buffers: Vec<BufferEmpty>,
    output_data: PhantomData<O>,
}

impl<O> Source<O>
where
    O: std::fmt::Debug + Send + 'static,
{
    pub fn new<S: Into<String>>(dma_d2h: impl AsRef<str>, dma_bufs: Vec<S>) -> Result<Block> {
        assert!(dma_bufs.len() > 1);
        let dma_bufs: _ = dma_bufs.into_iter().map(Into::into).collect();

        Ok(Block::new(
            BlockMetaBuilder::new("Source").blocking().build(),
            StreamIoBuilder::new().add_output::<O>("out").build(),
            MessageIoBuilder::<Self>::new().build(),
            Source {
                dma_d2h: AxiDma::new(dma_d2h.as_ref())?,
                dma_bufs,
                output_buffers: Vec::new(),
                output_data: PhantomData,
            },
        ))
    }
}

#[inline]
fn o(sio: &mut StreamIo, id: usize) -> &mut WriterD2H {
    sio.output(id).try_as::<WriterD2H>().unwrap()
}

#[doc(hidden)]
#[async_trait]
impl<O> Kernel for Source<O>
where
    O: std::fmt::Debug + Send + 'static,
{
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
        _io: &mut WorkIo,
        sio: &mut StreamIo,
        _mio: &mut MessageIo<Self>,
        _meta: &mut BlockMeta,
    ) -> Result<()> {
        // println!("work()");
        self.output_buffers.extend(o(sio, 0).buffers());

        while !self.output_buffers.is_empty() {
            let outbuff = self.output_buffers.pop().unwrap().buffer;

            let size = 8000;
            self.dma_d2h.start_d2h(&outbuff, size).unwrap();
            self.dma_d2h.wait_d2h().unwrap();
            print!(".");
            // println!("dma transfers finished {}", self.dma_d2h.size_d2h());

            // println!("samples {:?}", unsafe {std::slice::from_raw_parts(outbuff.buffer() as *const i16, 100)});
            o(sio, 0).submit(BufferFull {
                buffer: outbuff,
                used_bytes: size,
            });
        }

        // println!("work() done");
        Ok(())
    }
}
