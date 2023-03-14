#!/bin/bash

set -xe

SCRIPTPATH="$( cd -- "$(dirname "$0")" >/dev/null 2>&1 ; pwd -P )"
${SCRIPTPATH}/build.sh

ssh zcu "mkdir -p .ssh"
scp ${HOME}/.ssh/id_rsa.pub zcu:.ssh/authorized_keys
scp ${SCRIPTPATH}/config.toml zcu:
scp ${SCRIPTPATH}/target/aarch64-xilinx-linux/release/zigbee_rx zcu:
scp ${SCRIPTPATH}/target/aarch64-xilinx-linux/release/spectrum zcu:
scp ${SCRIPTPATH}/target/aarch64-xilinx-linux/release/dump zcu:
