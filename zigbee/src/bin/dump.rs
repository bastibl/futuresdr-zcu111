use futuresdr::anyhow::Result;
use futuresdr::blocks::Apply;
use futuresdr::blocks::FileSink;
use futuresdr::macros::connect;
use futuresdr::num_complex::Complex;
use futuresdr::num_complex::Complex32;
use futuresdr::runtime::buffer::zynq::D2H;
use futuresdr::runtime::Flowgraph;
use futuresdr::runtime::Runtime;

fn main() -> Result<()> {
    let mut fg = Flowgraph::new();

    let src = zigbee::Source::<Complex<i16>>::new("uio0", vec!["udmabuf0", "udmabuf1"])?;
    let conv = Apply::new(|x: &Complex<i16>| {
        let re = x.re as f32 / 2.0_f32.powf(10.0);
        let im = x.im as f32 / 2.0_f32.powf(10.0);
        Complex32::new(re, im)
    });
    let snk = FileSink::<Complex32>::new("/home/petalinux/foo.cf32");
    connect!(fg, src [D2H::new()] conv > snk);

    Runtime::new().run(fg)?;
    Ok(())
}

