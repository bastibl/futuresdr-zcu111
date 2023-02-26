#!/bin/sh

petalinux-boot --jtag --kernel --fpga --bitstream project-spec/hw-description/mpsoc_preset_wrapper.bit  -v
