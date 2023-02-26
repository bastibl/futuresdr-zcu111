#
# This file is the myrfdc recipe.
#
#
#

##### INC

# inherit xlnx-embeddedsw
# 
# COMPATIBLE_MACHINE = "^$"
# COMPATIBLE_MACHINE:zynqmp-dr = "zynqmp-dr"
# 
# PACKAGE_ARCH = "${SOC_VARIANT_ARCH}"
# 
# DEPENDS = "rfdc"
# RDEPENDS:${PN} = "rfdc"
# 
# PACKAGES = "${PN}-dbg ${PN}"
# 
# #S = "${WORKDIR}/git"
# #B = "${WORKDIR}/build"
# #
# FLAG = ""
# FLAG:zcu111 = "-DXPS_BOARD_ZCU111"

#RFDC_SUBDIR = "XilinxProcessorIPLib/drivers/rfdc/examples"

#do_compile:prepend () {
#    cd ${S}/${RFDC_SUBDIR}
#    cp Makefile.Linux Makefile
#}



##### RECIEPT

# SUMMARY = "Simple rfdc-selftest application"
# 
# require rfdc-examples.inc
# 
# do_compile (){
#     make all BOARD_FLAG=${FLAG} OUTS=${B}/rfdc-selftest RFDC_OBJS=xrfdc_selftest_example.o
# }

#
#
#
#
#

SUMMARY = "Simple myrfdc application"
SECTION = "PETALINUX/apps"
LICENSE = "MIT"
LIC_FILES_CHKSUM = "file://${COMMON_LICENSE_DIR}/MIT;md5=0835ade698e0bcf8506ecda2f7b4f302"

COMPATIBLE_MACHINE = "^$"
COMPATIBLE_MACHINE:zynqmp-dr = "zynqmp-dr"
FLAG = ""
FLAG:zcu111 = "-DXPS_BOARD_ZCU111"
PACKAGE_ARCH = "${SOC_VARIANT_ARCH}"

DEPENDS = "rfdc"
DEPENDS += "rfclk"
#DEPENDS += "virtual/fsbl"
#DEPENDS += "virtual/plm"
#DEPENDS += "virtual/psm-firmware"
#DEPENDS += "virtual/pmu-firmware"
PROVIDES = "myrfdc"

S = "${WORKDIR}"
SRC_URI = "file://myrfdc.c \
	   file://xrfdc_clk.c \
	   file://xrfdc_clk.h \
	   file://Makefile \
		  "
#SRC_URI = "file://xrfdc_selftest_example.c \
#       file://xrfdc_clk.c \
#       file://xrfdc_clk.h \
#       file://Makefile \
# "


do_compile (){
    make all BOARD_FLAG=-DXPS_BOARD_ZCU111 OUTS=rfdc-test RFDC_OBJS=xrfdc_selftest_example.o
}

do_install() {
	     install -d ${D}${bindir}
	     install -m 0755 myrfdc ${D}${bindir}
}

