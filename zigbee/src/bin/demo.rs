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
use zigbee::PacketSource;
use zigbee::Source;

fn main() -> Result<()> {
    futuresdr::runtime::init();
    let mut fg = Flowgraph::new();

    let mac = Mac::new();
    let snk = NullSink::<u8>::new();
    connect!(fg, mac > snk);

    // CPU
    let mut src = Source::<Complex<i16>>::new(false, "uio0", vec!["udmabuf0", "udmabuf1"])?;
    src.set_instance_name("iq_src");

    let conv = Apply::new(|i: &Complex<i16>| -> Complex32 {
        let re = i.re as f32;
        let imag = i.im as f32;
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

    let omega = 2.0;
    let gain_omega = 0.000225;
    let mu = 0.5;
    let gain_mu = 0.03;
    let omega_relative_limit = 0.0002;
    let mm = ClockRecoveryMm::new(omega, gain_omega, mu, gain_mu, omega_relative_limit);
    let decoder = Decoder::new(11);

    connect!(fg, src [D2H::new()] conv > avg > mm > decoder;
             decoder | mac.rx);

    // TAN FPGA
    let mut src = Source::<i16>::new(true, "uio1", vec!["udmabuf0", "udmabuf1"])?;
    src.set_instance_name("tan_src");

    let conv = Apply::new(move |i: &i16| -> f32 {
        let x = *i as f32;
        x / 8192.0
    });

    let omega = 2.0;
    let gain_omega = 0.000225;
    let mu = 0.5;
    let gain_mu = 0.03;
    let omega_relative_limit = 0.0002;
    let mm = ClockRecoveryMm::new(omega, gain_omega, mu, gain_mu, omega_relative_limit);
    let decoder = Decoder::new(11);

    connect!(fg, src [D2H::new()] conv > mm > decoder;
             decoder | mac.rx);

    // MM FPGA
    let mut src = Source::<i8>::new(false, "uio2", vec!["udmabuf0", "udmabuf1"])?;
    src.set_instance_name("mm_src");

    let conv = Apply::new(move |i: &i8| -> f32 { *i as f32 });

    let decoder = Decoder::new(11);

    connect!(fg, src [D2H::new()] conv > decoder;
             decoder | mac.rx);

    // DECODER FPGA
    let mut src = PacketSource::new(false, "uio3", "udmabuf0")?;
    src.set_instance_name("decoder_src");
    connect!(fg, src.packet | mac.rx);

    // MAC FPGA
    let mut src = PacketSource::new(false, "uio4", "udmabuf0")?;
    src.set_instance_name("mac_src");
    connect!(fg, src.packet | mac.rx);

    println!("FutureSDR: Starting Flowgraph");
    let rt = Runtime::new();
    rt.run(fg)?;

    Ok(())
}
