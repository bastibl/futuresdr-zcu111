use futuresdr::anyhow::Result;
use futuresdr::blocks::Apply;
use futuresdr::blocks::Fft;
use futuresdr::blocks::FftDirection;
use futuresdr::blocks::WebsocketSinkBuilder;
use futuresdr::blocks::WebsocketSinkMode;
use futuresdr::macros::connect;
use futuresdr::num_complex::Complex;
use futuresdr::num_complex::Complex32;
use futuresdr::runtime::buffer::zynq::D2H;
use futuresdr::runtime::Flowgraph;
use futuresdr::runtime::Runtime;

const FFT_SIZE: usize = 4096;

fn main() -> Result<()> {
    let mut fg = Flowgraph::new();

    let src = zigbee::Source::<Complex<i16>>::new("uio0", vec!["udmabuf0", "udmabuf1"])?;
    let mut avg = Complex::new(0.0, 0.0);
    let alpha = 0.005;
    let conv = Apply::new(move |x: &Complex<i16>| {
        let re = x.re as f32 / 2.0_f32.powf(10.0);
        let im = x.im as f32 / 2.0_f32.powf(10.0);
        let i = Complex32::new(re, im);
        avg = (1.0 - alpha) * avg + alpha * i;
        i - avg
    });
    let fft = Fft::with_options(FFT_SIZE, FftDirection::Forward, true, None);
    let power = zigbee::lin2power_db();
    let keep = zigbee::Keep1InN::<FFT_SIZE>::new(0.1, 3);
    let snk = WebsocketSinkBuilder::<f32>::new(9001)
        .mode(WebsocketSinkMode::FixedBlocking(FFT_SIZE))
        .build();

    connect!(fg, src [D2H::new()] conv > fft > power > keep > snk);

    Runtime::new().run(fg)?;
    Ok(())
}
