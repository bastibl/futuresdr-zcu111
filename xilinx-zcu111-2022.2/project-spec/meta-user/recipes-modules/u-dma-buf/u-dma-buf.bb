SUMMARY = "Recipe for  build an external u-dma-buf Linux kernel module"
SECTION = "PETALINUX/modules"
LICENSE = "BSD-2-Clause"
LIC_FILES_CHKSUM = "file://LICENSE;md5=bebf0492502927bef0741aa04d1f35f5"

inherit module

INHIBIT_PACKAGE_STRIP = "1"

SRC_URI = "git://github.com/ikwzm/udmabuf.git"
SRCREV = "5e593b2bbeb2e3e399b27022286b8cb1827d8b11"

S = "${WORKDIR}/git"

RPROVIDES_${PN} += "kernel-module-u-dma-buf kernel-module-u-dma-buf-mgr"

# The inherit of module.bbclass will automatically name module packages with
# "kernel-module-" prefix as required by the oe-core build environment.
do_compile() {
    unset CFLAGS CPPFLAGS CXXFLAGS LDFLAGS
    oe_runmake KERNEL_PATH=${STAGING_KERNEL_DIR}   \
           KERNEL_VERSION=${KERNEL_VERSION}    \
           CC="${KERNEL_CC}" LD="${KERNEL_LD}" \
           AR="${KERNEL_AR}" \
               O=${STAGING_KERNEL_BUILDDIR} \
           KBUILD_EXTRA_SYMBOLS="${KBUILD_EXTRA_SYMBOLS}" \
           CONFIG_U_DMA_BUF_MGR=y \
           ${MAKE_TARGETS}
}
