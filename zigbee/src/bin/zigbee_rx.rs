use futuresdr::anyhow::Result;
use futuresdr::blocks::Apply;
use futuresdr::blocks::NullSink;
use futuresdr::macros::connect;
use futuresdr::num_complex::Complex32;
use futuresdr::runtime::buffer::zynq::D2H;
use futuresdr::runtime::Flowgraph;
use futuresdr::runtime::Runtime;

use zigbee::ClockRecoveryMm;
use zigbee::Decoder;
use zigbee::Mac;
use zigbee::Source;

fn main() -> Result<()> {
    let mut fg = Flowgraph::new();

    let src = Source::<Complex32>::new("uio0", vec!["udmabuf0", "udmabuf1"])?;

    let mut last: Complex32 = Complex32::new(0.0, 0.0);
    let mut iir: f32 = 0.0;
    let alpha = 0.00016;
    let avg = Apply::new(move |i: &Complex32| -> f32 {
        let phase = (last.conj() * i).arg();
        last = *i;
        iir = (1.0 - alpha) * iir + alpha * phase;
        phase - iir
    });

    let omega = 2.0;
    let gain_omega = 0.000225;
    let mu = 0.5;
    let gain_mu = 0.03;
    let omega_relative_limit = 0.0002;
    let mm = ClockRecoveryMm::new(omega, gain_omega, mu, gain_mu, omega_relative_limit);

    let decoder = Decoder::new(6);
    let mac = Mac::new();
    let snk = NullSink::<u8>::new();

    connect!(fg, src [D2H::new()] avg > mm > decoder;
             mac > snk;
             decoder | mac.rx);

    Runtime::new().run(fg)?;
    Ok(())
}
