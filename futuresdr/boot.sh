#!/bin/sh

petalinux-boot --jtag --kernel --fpga --bitstream project-spec/hw-description/receiver8_atan.bit  -v
