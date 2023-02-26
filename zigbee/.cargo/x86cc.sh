#!/bin/bash

set -xe

SCRIPTPATH="$( cd -- "$(dirname "$0")" >/dev/null 2>&1 ; pwd -P )"
source ${SCRIPTPATH}/../env.sh

/usr/lib/ccache/cc \
    -L${SDK}/sysroots/x86_64-petalinux-linux/lib \
    -L${SDK}/sysroots/x86_64-petalinux-linux/usr/lib \
    "$@"
