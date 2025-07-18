FILESEXTRAPATHS:prepend := "${THISDIR}/files/common:${THISDIR}/files/${MACHINE}:${THISDIR}/files:"

do_compile:prepend:dh-stm32mp-dhsom () {
	sed -i -e "s/%UBOOT_DTB_LOADADDRESS%/${UBOOT_DTB_LOADADDRESS}/g" \
		-e "s/%UBOOT_DTBO_LOADADDRESS%/${UBOOT_DTBO_LOADADDRESS}/g" \
		${UNPACKDIR}/${UBOOT_ENV_SRC}
}

SRC_URI:append:dh-stm32mp-dhsom = " \
	file://boot.cmd \
	file://fw_env.config \
	"

SRC_URI:append:dh-stm32mp1-dhsom = " \
	file://default-device-tree.cfg \
	"

SRC_URI:append:dh-stm32mp2-dhsom = " \
	file://0001-dm-gpio-Add-GPIOF_PROTECTED-flag.patch \
	file://0002-pinctrl-pinctrl_stm32-support-IO-synchronization-par.patch \
	file://0003-gpio-stm32_gpio-flag-secured-pin-as-protected.patch \
	file://0004-gpio-stm32_gpio-support-RIF-semaphore-handling.patch \
	file://0005-gpio-stm32_gpio-release-RIF-semaphores-before-OS-boo.patch \
	file://0006-arm-stm32-correctly-handle-STM32_DDR_SIZE-for-STM32M.patch \
	file://0007-arm-mach-stm32mp-stm32mp2-map-boot-alias-1-for-inter.patch \
	file://0008-stm32mp-update-stm32_smc-function-to-be-compatible-w.patch \
	file://0009-stm32mp-bsec-add-support-for-non-secure-mirror.patch \
	file://0010-stm32mp2-Limit-DDR-usage-under-4GB-boundary-for-STM3.patch \
	file://0011-fixup-stm32mp2-Limit-DDR-usage-under-4GB-boundary-fo.patch \
	file://0012-firmware-scmi-smt-add-a-polling-completion-method.patch \
	file://0013-firmware-scmi-mailbox-use-smt-polling-method.patch \
	file://0014-reset-remove-reset_assert-call-in-reset_release_all.patch \
	file://0015-serial-stm32-use-STM32_USART_FIFO_TMO_US-define.patch \
	file://0016-serial-stm32-adapt-timeout-to-STM32MP2.patch \
	file://0017-board-st-stm32mp2-add-dfu_usb_get_reset-TEMP.patch \
	file://0018-board-st-stm32mp2-add-g_dnl_bind_fixup.patch \
	file://0019-generic-phy-add-set_mode-operation.patch \
	file://0020-usb-dwc3-Call-set_mode-for-the-PHY.patch \
	file://0021-phy-stm32-add-support-for-STM32-USB2-FEMTO-PHY.patch \
	file://0022-phy-stm32-add-usb-role-info-handling-in-STM32-USB2-F.patch \
	file://0023-phy-stm32-Use-regulator_set_enable_if_allowed.patch \
	file://0024-phy-stm32-add-support-for-STM32-USB2PHY.patch \
	file://0025-phy-stm32-remove-internal-vbus-comp-support.patch \
	file://0026-phy-stm32-usb2phy-usb2phy-is-a-clock-provider-of-48M.patch \
	file://0027-usb-hcd-Call-set_mode-for-the-PHY.patch \
	file://0028-usb-dwc3-Add-support-for-STM32-platform-in-dwc3-gene.patch \
	file://0029-usb-dwc3-Remove-usb-device-RUN-bit-enable-during-exi.patch \
	file://0030-usb-dwc3-fix-incrx_mode-setting-for-INCRX_BURST_MODE.patch \
	file://0031-usb-ohci-Skip-flush_dcache_buffer-call-for-zero-leng.patch \
	file://0032-usb-usb2h-add-STM32-usb2h-glue-layer-to-manage-usb2h.patch \
	file://0033-usb-ehci-hcd-Perform-usb-resume-in-ehci_register-cal.patch \
	file://0034-usb-dwc3-Fix-for-usb3-configuration-with-no-usb3-phy.patch \
	file://0035-usb-dwc3-Modify-generic_phy_set_mode-call-to-pass-us.patch \
	file://0036-usb-gadget-f_mass_storage-Add-schedule-in-sleep_thre.patch \
	file://0037-i2c-stm32-add-support-for-STM32MP25-soc.patch \
	file://0038-Revert-i2c-stm32-do-not-set-the-STOP-condition-on-er.patch \
	file://0039-arm64-dts-st-Add-support-for-STM32MP23xx-STM32MP25xx.patch \
	"

do_deploy:append:dh-stm32mp13-dhcor-dhsbc() {
        install -D -m 644 ${B}/u-boot.dtb ${DEPLOYDIR}/u-boot.dtb
}

do_deploy:append:dh-stm32mp2-dhsom() {
        install -D -m 644 ${B}/u-boot.dtb ${DEPLOYDIR}/u-boot.dtb
}

# U-Boot release extra version, used as identifier of a patch
# release. Update this every time this recipe is updated. The
# format is -${MACHINE}-date.extraversion. The date is in the
# format YYYYMMDD, the extraversion is used in case there are
# multiple releases during a single day, which is unlikely.
UBOOT_LOCALVERSION:dh-stm32mp-dhsom ?= "-${MACHINE}-20260728.01"
