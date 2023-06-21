#![allow(clippy::new_ret_no_self)]
mod clock_recovery_mm;
pub use clock_recovery_mm::ClockRecoveryMm;

mod decoder;
pub use decoder::Decoder;

mod iq_delay;
pub use iq_delay::IqDelay;

mod keep_1_in_n;
pub use keep_1_in_n::Keep1InN;

mod mac;
pub use mac::Mac;

mod modulator;
pub use modulator::modulator;

mod packet_source;
pub use packet_source::PacketSource;

mod source;
pub use source::Source;

use futuresdr::anyhow::{bail, Result};

pub fn channel_to_freq(chan: u32) -> Result<f64> {
    if (11..=26).contains(&chan) {
        Ok((2400.0 + 5.0 * (chan as f64 - 10.0)) * 1e6)
    } else {
        bail!("wrong channel {chan}");
    }
}

pub fn parse_channel(s: &str) -> Result<f64, String> {
    let channel: u32 = s
        .parse()
        .map_err(|_| format!("`{s}` isn't a ZigBee channel number"))?;

    channel_to_freq(channel).map_err(|_| format!("`{s}` isn't a ZigBee channel number"))
}

use futuresdr::blocks::Apply;
use futuresdr::num_complex::Complex32;
use futuresdr::runtime::Block;

pub fn lin2db_block() -> Block {
    Apply::new(|x: &f32| 10.0 * x.log10())
}

pub fn power_block() -> Block {
    Apply::new(|x: &Complex32| x.norm())
}

pub fn lin2power_db() -> Block {
    Apply::new(|x: &Complex32| 10.0 * x.norm().log10())
}
