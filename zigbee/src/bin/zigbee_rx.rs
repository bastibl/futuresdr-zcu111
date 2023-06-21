use futuresdr::anyhow::Result;
use futuresdr::blocks::Apply;
use futuresdr::blocks::NullSink;
use futuresdr::macros::connect;
use futuresdr::num_complex::Complex;
use futuresdr::num_complex::Complex32;
use futuresdr::runtime::buffer::zynq::D2H;
use futuresdr::runtime::Flowgraph;
use futuresdr::runtime::Runtime;

use zigbee::ClockRecoveryMm;
use zigbee::Decoder;
use zigbee::Mac;
use zigbee::Source;

fn main() -> Result<()> {
    futuresdr::runtime::init();
    let mut fg = Flowgraph::new();

    let src = Source::<Complex<i16>>::new(true, "uio0", vec!["udmabuf0", "udmabuf1"])?;

    let conv = Apply::new(|i: &Complex<i16>| -> Complex32 {
        let re = i.re as f32; // / 2.0_f32.powf(10.0);
        let imag = i.im as f32; // / 2.0_f32.powf(10.0);
        Complex32::new(re, imag)
    });

    let mut last: Complex32 = Complex32::new(0.0, 0.0);
    let mut iir: f32 = 0.0;
    let alpha = 0.00016;
    let avg = Apply::new(move |i: &Complex32| -> f32 {
        let phase = (last.conj() * i).arg();
        last = *i;
        iir = (1.0 - alpha) * iir + alpha * phase;
        phase - iir
    });

    // let mut last: Complex32 = Complex32::new(0.0, 0.0);
    // let phase = Apply::new(move |i: &Complex32| -> f32 {
    //     let phase = (last.conj() * i).arg();
    //     last = *i;
    //     phase
    // });
    //
    // let alpha = 0.00016;
    // let iir = futuresdr::blocks::IirBuilder::new::<f32, f32, f32, [f32; 2]>([1.0 - alpha, alpha], [0.0, 0.0]);
    //
    // let combine = Combine::new(|a: &f32, b: &f32|  a - b);

    let omega = 2.0;
    let gain_omega = 0.000225;
    let mu = 0.5;
    let gain_mu = 0.03;
    let omega_relative_limit = 0.0002;
    let mm = ClockRecoveryMm::new(omega, gain_omega, mu, gain_mu, omega_relative_limit);

    let decoder = Decoder::new(11);
    let mac = Mac::new();
    let snk = NullSink::<u8>::new();

    connect!(fg, src [D2H::new()] conv > avg > mm > decoder;
             mac > snk;
             decoder | mac.rx);
    // connect!(fg, src [D2H::new()] conv > phase > combine.0;
    //                 phase > iir > combine.1;
    //                 combine > mm > decoder;
    //          mac > snk;
    //          decoder | mac.rx);

    println!("running");
    let rt = Runtime::with_scheduler(futuresdr::runtime::scheduler::SmolScheduler::new(4, false));
    // let rt = Runtime::with_scheduler(futuresdr::runtime::scheduler::FlowScheduler::new());
    rt.run(fg)?;
    Ok(())
}
