use std::marker::PhantomData;
use xilinx_dma::AxiDmaAsync;
use xilinx_dma::DmaBuffer;

use futuresdr::anyhow::Result;
use futuresdr::async_trait::async_trait;
use futuresdr::runtime::buffer::zynq::BufferEmpty;
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
    O: Send + 'static,
{
    dma_d2h: AxiDmaAsync,
    dma_bufs: Vec<String>,
    output_buffers: Vec<BufferEmpty>,
    output_data: PhantomData<O>,
}

impl<O> Source<O>
where
    O: Send + 'static,
{
    pub fn new<S: Into<String>>(
        dma_d2h: impl AsRef<str>,
        dma_bufs: Vec<S>,
    ) -> Result<Block> {
        assert!(dma_bufs.len() > 1);
        let dma_bufs = dma_bufs.into_iter().map(Into::into).collect();

        Ok(Block::new(
            BlockMetaBuilder::new("Source").build(),
            StreamIoBuilder::new().add_output::<O>("out").build(),
            MessageIoBuilder::<Self>::new().build(),
            Source {
                dma_d2h: AxiDmaAsync::new(dma_d2h.as_ref())?,
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
    O: Send + 'static,
{
    async fn init(
        &mut self,
        _sio: &mut StreamIo,
        _m: &mut MessageIo<Self>,
        _b: &mut BlockMeta,
    ) -> Result<()> {
        assert!(!self.dma_bufs.is_empty());

        for n in self.dma_bufs.iter() {
            self.output_buffers.push(BufferEmpty {
                buffer: DmaBuffer::new(n)?,
            });
        }

        self.dma_d2h.reset();
        Ok(())
    }

    async fn work(
        &mut self,
        _io: &mut WorkIo,
        sio: &mut StreamIo,
        _mio: &mut MessageIo<Self>,
        _meta: &mut BlockMeta,
    ) -> Result<()> {
        self.output_buffers.extend(o(sio, 0).buffers());

        // while !self.output_buffers.is_empty() {
        //     let outbuff = self.output_buffers.pop().unwrap().buffer;
        //
        //     self.dma_d2h.start_d2h(&outbuff, used_bytes).await.unwrap();
        //     debug!("dma transfers started (bytes: {})", used_bytes);
        //     self.dma_d2h.wait_d2h().await.unwrap();
        //
        //     o(sio, 0).submit(BufferFull {
        //         buffer: outbuff,
        //         used_bytes,
        //     });
        // }

        Ok(())
    }
}
