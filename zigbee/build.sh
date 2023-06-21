#!/bin/bash

set -xe

unset LD_LIBRARY_PATH

SCRIPTPATH="$( cd -- "$(dirname "$0")" >/dev/null 2>&1 ; pwd -P )"
source ${SCRIPTPATH}/env.sh
source ${SDK}/environment-setup-cortexa72-cortexa53-xilinx-linux

cargo build --release --bin spectrum --target aarch64-xilinx-linux
cargo build --release --bin zigbee_rx --target aarch64-xilinx-linux
cargo build --release --bin dump --target aarch64-xilinx-linux
cargo build --release --bin dma --target aarch64-xilinx-linux
cargo build --release --bin demo --target aarch64-xilinx-linux

