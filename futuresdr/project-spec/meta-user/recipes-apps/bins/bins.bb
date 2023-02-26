#
# This file is the bins recipe.
#

SUMMARY = "Simple bins application"
SECTION = "PETALINUX/apps"
LICENSE = "MIT"
LIC_FILES_CHKSUM = "file://${COMMON_LICENSE_DIR}/MIT;md5=0835ade698e0bcf8506ecda2f7b4f302"

SRC_URI = "file://zigbee_rx \
           file://99-u-dma-buf.rules \
           file://99-uio.rules \
	"

S = "${WORKDIR}"

do_install() {
	     install -d ${D}/${bindir}
	     install -m 0755 ${S}/zigbee_rx ${D}/${bindir}
	     install -d ${D}/etc/udev/rules.d
	     install -m 0644 ${S}/99-u-dma-buf.rules ${D}/etc/udev/rules.d
	     install -m 0644 ${S}/99-uio.rules ${D}/etc/udev/rules.d
}
