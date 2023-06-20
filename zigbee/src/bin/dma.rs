use clap::{command, Parser};
use futuresdr::anyhow::Result;
use xilinx_dma::AxiDma;
use xilinx_dma::DmaBuffer;

#[derive(Parser, Debug)]
#[command(version)]
struct Args {
    /// uio device
    #[arg(short, long, default_value = "uio0")]
    dev: String,
}

fn main() -> Result<()> {
    let args = Args::parse();

    let dma_buffer = DmaBuffer::new("udmabuf0")?;
    println!("{:?}", dma_buffer);
    let mut dma_d2h = AxiDma::new(&args.dev)?;
    println!("{:?}", dma_d2h);

    dma_d2h.reset();
    std::thread::sleep(std::time::Duration::from_millis(100));
    println!("status start");
    dma_d2h.status_d2h();

    loop {
        println!("starting");
        dma_d2h.start_d2h(&dma_buffer, dma_buffer.size()/8)?;
        std::thread::sleep(std::time::Duration::from_millis(100));
        dma_d2h.status_d2h();
        dma_d2h.wait_d2h()?;
        let read = dma_d2h.size_d2h();
        // println!("read {:?}", &dma_buffer.slice::<u8>()[0..read]);
        println!("read {:?}", &dma_buffer.slice::<i16>()[0..read/2]);
    }
}
