FILESEXTRAPATHS_prepend := "${THISDIR}/${PN}-3.10:${THISDIR}/linux-yocto-3.10:${THISDIR}/files:"

COMPATIBLE_MACHINE .= "|akita|c7x0|collie|poodle|spitz|tosa"

# Zaurus machines need kernel size-check.
KERNEL_IMAGE_MAXSIZE_akita = "1264"
KERNEL_IMAGE_MAXSIZE_c7x0 = "1264"
KERNEL_IMAGE_MAXSIZE_collie = "1024"
KERNEL_IMAGE_MAXSIZE_poodle = "1264"
KERNEL_IMAGE_MAXSIZE_spitz = "1264"
KERNEL_IMAGE_MAXSIZE_tosa = "1264"

KMACHINE_akita = "akita"
KMACHINE_c7x0 = "c7x0"
KMACHINE_collie = "collie"
KMACHINE_poodle = "poodle"
KMACHINE_spitz = "spitz"
KMACHINE_tosa = "tosa"

# Note: Providing "defconfig" we bypass the linux-yocto processing
# re-expand the defconfig produced by "make_savedefconfig"
KCONFIG_MODE_akita = "--alldefconfig"
KCONFIG_MODE_c7x0 = "--alldefconfig"
KCONFIG_MODE_collie = "--alldefconfig"
KCONFIG_MODE_poodle = "--alldefconfig"
KCONFIG_MODE_spitz = "--alldefconfig"
KCONFIG_MODE_tosa = "--alldefconfig"

SRC_URI_append_akita = " \
           file://defconfig \
           file://patches/patches-pxa/sharpsl_param.patch \
           file://patches/revert-check-on-console-device.patch \
           file://vga/logo_linux_clut224.ppm.bz2 \
           "

SRC_URI_append_c7x0 = " \
           file://defconfig \
           file://patches/patches-pxa/sharpsl_param.patch \
           file://patches/revert-check-on-console-device.patch \
           file://vga/logo_linux_clut224.ppm.bz2 \
           "

SRC_URI_append_collie = " \
           file://defconfig \
           file://patches/patches-locomokbd/locomo_kbd_tweak-r2.patch \
           file://patches/patches-power/collie_battery-dev-pm.patch \
           file://patches/patches-mfd/mcp-device.patch \
           file://patches/patches-mfd/ucb1x00-device.patch \
           file://patches/patches-mtd/collie-jedec-probe.patch \
           file://patches/patches-mtd/collie-eraseinfo.patch \
           file://patches/patches-mtd/collie-cfi-probe-again.patch \
           file://patches/patches-mtd/collie-mtd-resize.patch \
           file://patches/patches-mtd/collie-LH28F640BF.patch \
           file://patches/patches-sa1100/collie-irda.patch \
           file://patches/patches-sa1100/collie-add-bootblock.patch \
           file://patches/patches-sa1100/arm-sa1100-add-cpu-clock.patch \
           file://patches/patches-sa1100/fbdev-sa1100fb-make-use-of-device-clock.patch \
           file://patches/patches-sa1100/pcmcia-sa1100-device-clock.patch \
           file://patches/patches-locomo/locomo-fix-SCL-SDA.patch \
           file://patches/patches-locomo/locomolcd-suspend-resume.patch \
           file://patches/revert-check-on-console-device.patch \
           file://qvga/logo_linux_clut224.ppm.bz2 \
           "

SRC_URI_append_poodle = " \
           file://defconfig \
           file://patches/patches-locomokbd/locomo_kbd_tweak-r2.patch \
           file://patches/patches-pxa/sharpsl_param.patch \
           file://patches/revert-check-on-console-device.patch \
           file://qvga/logo_linux_clut224.ppm.bz2 \
           "

SRC_URI_append_spitz = " \
           file://defconfig \
           file://patches/patches-pxa/sharpsl_param.patch \
           file://patches/revert-check-on-console-device.patch \
           file://vga/logo_linux_clut224.ppm.bz2 \
           "

SRC_URI_append_tosa = " \
           file://defconfig \
           file://patches/patches-pxa/sharpsl_param.patch \
           file://patches/patches-power/tosa_battery_irq_to_gpio.patch \
           file://patches/patches-pxa/tosa-keys-mapping.patch \
           file://patches/revert-check-on-console-device.patch \
           file://vga/logo_linux_clut224.ppm.bz2 \
           "

do_configure_prepend() {

    if [ -e ${WORKDIR}/logo_linux_clut224.ppm ]; then
        install -m 0644 ${WORKDIR}/logo_linux_clut224.ppm ${WORKDIR}/linux/drivers/video/logo/logo_linux_clut224.ppm
    fi
}
