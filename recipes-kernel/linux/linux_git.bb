require recipes-kernel/linux/linux.inc

PR = "${INC_PR}.0"
COMPATIBLE_MACHINE = "spitz"

DEFAULT_PREFERENCE = "-2"

KERNEL_RELEASE = "3.4.0"
OLD_KERNEL_RELEASE = "3.3.999"
PV = "${OLD_KERNEL_RELEASE}+${KERNEL_RELEASE}+gitr${SRCPV}"

SRCREV = "76e10d158efb6d4516018846f60c2ab5501900bc"

CMDLINE_DEBUG = "debug"

SRC_URI = "git://git.kernel.org/pub/scm/linux/kernel/git/torvalds/linux-2.6.git;protocol=git;branch=master \
           file://defconfig"

S = "${WORKDIR}/git"

SRC_URI_append_akita = " file://${LOGO_SIZE}/logo_linux_clut224.ppm.bz2 "
SRC_URI_append_c7x0 = " file://${LOGO_SIZE}/logo_linux_clut224.ppm.bz2 "
SRC_URI_append_collie = " file://${LOGO_SIZE}/logo_linux_clut224.ppm.bz2 "
SRC_URI_append_poodle = " file://${LOGO_SIZE}/logo_linux_clut224.ppm.bz2 "
SRC_URI_append_tosa = " file://${LOGO_SIZE}/logo_linux_clut224.ppm.bz2 "
SRC_URI_append_spitz = " file://${LOGO_SIZE}/logo_linux_clut224.ppm.bz2 "
