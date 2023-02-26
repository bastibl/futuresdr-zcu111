#!/bin/bash

set -xe

SCRIPTPATH="$( cd -- "$(dirname "$0")" >/dev/null 2>&1 ; pwd -P )"
${SCRIPTPATH}/build.sh

cp ${SCRIPTPATH}/target/aarch64-xilinx-linux/release/zigbee_rx \
   ${SCRIPTPATH}/../futuresdr/project-spec/meta-user/recipes-apps/bins/files/
