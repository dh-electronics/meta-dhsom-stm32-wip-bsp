FILESEXTRAPATHS:prepend := "${THISDIR}/files/common:${THISDIR}/files/${MACHINE}:${THISDIR}/files:"

do_compile:prepend:dh-stm32mp1-dhsom () {
	sed -i -e "s/%UBOOT_DTB_LOADADDRESS%/${UBOOT_DTB_LOADADDRESS}/g" \
		-e "s/%UBOOT_DTBO_LOADADDRESS%/${UBOOT_DTBO_LOADADDRESS}/g" \
		${WORKDIR}/${UBOOT_ENV_SRC}
}

do_compile:prepend:dh-stm32mp2-dhsom () {
	sed -i -e "s/%UBOOT_DTB_LOADADDRESS%/${UBOOT_DTB_LOADADDRESS}/g" \
		-e "s/%UBOOT_DTBO_LOADADDRESS%/${UBOOT_DTBO_LOADADDRESS}/g" \
		${WORKDIR}/${UBOOT_ENV_SRC}
}

SRC_URI:append:dh-stm32mp1-dhsom = " \
	file://boot.cmd \
	file://fw_env.config \
	file://default-device-tree.cfg \
	file://0001-ARM-stm32-Use-CONFIG_STM32MP15X-to-discern-STM32MP15.patch \
	file://0002-ARM-stm32-Reinstate-missing-SPL-configs-for-DH-STM32.patch \
	file://0003-cmd-ums-Switch-HW-partition-before-block-access.patch \
	"

SRC_URI:append:dh-stm32mp13-dhsom = " \
	file://9001-ARM-dts-stm32-Add-SCMI-clocks-in-rcc-node-for-stm32m.patch \
	file://9002-clk-stm32-Update-clock-management-for-STM32MP13-25.patch \
	"

SRC_URI:append:dh-stm32mp2-dhsom = " \
	file://boot.cmd \
	file://fw_env.config \
	file://0001-dm-button-add-support-for-disabling-GPIO-buttons-via.patch \
	file://0002-dm-gpio-Add-GPIOF_PROTECTED-flag.patch \
	file://0003-gpio-stm32-gpio-prevent-the-use-of-the-secure-protec.patch \
	file://0004-pinctrl-pinctrl_stm32-prevent-the-use-of-the-secure-.patch \
	file://0005-pinctrl-pinctrl_stm32-Add-stm32mp257-pinctrl-compati.patch \
	file://0006-pinctrl-pinctrl_stm32-support-IO-synchronization-par.patch \
	file://0007-pinctrl-stm32-rename-PIOCFGR-to-ADVCFGR.patch \
	file://0008-gpio-stm32_gpio-flag-secured-pin-as-protected.patch \
	file://0009-gpio-stm32_gpio-support-RIF-semaphore-handling.patch \
	file://0010-gpio-stm32_gpio-release-RIF-semaphores-before-OS-boo.patch \
	file://0011-gpio-stmfx-Use-correct-flag-values.patch \
	file://0012-env-mmc-select-GPT-env-partition-by-type-guid.patch \
	file://0013-arm-stm32mp-simply-reset-the-TAMP_COPRO_STATE-backup.patch \
	file://0014-arm-stm32mp-add-support-of-TAMP_COPRO-backup-registe.patch \
	file://0015-arm-stm32-correctly-handle-STM32_DDR_SIZE-for-STM32M.patch \
	file://0016-arm-mach-stm32mp-stm32mp2-map-boot-alias-1-for-inter.patch \
	file://0017-board-st-stm32mp2-add-dfu_usb_get_reset-TEMP.patch \
	file://0018-board-st-stm32mp2-add-g_dnl_bind_fixup.patch \
	file://0019-board-stm32mp2-add-ft_board_setup.patch \
	file://0020-board-stm32mp2-Add-env_sf_init_addr-weak-function.patch \
	file://0021-match-stm32-remove-useless-STM32_RESET-config-from-K.patch \
	file://0022-match-stm32mp-remove-useless-STM32_RESET-config-from.patch \
	file://0023-board-st-stm32mp2-update-user-button-management.patch \
	file://0024-stm32mp-update-stm32_smc-function-to-be-compatible-w.patch \
	file://0025-stm32mp-bsec-add-support-for-non-secure-mirror.patch \
	file://0026-stm32mp2-Limit-DDR-usage-under-4GB-boundary-for-STM3.patch \
	file://0027-fixup-stm32mp2-Limit-DDR-usage-under-4GB-boundary-fo.patch \
	file://0028-firmware-scmi-smt-add-a-polling-completion-method.patch \
	file://0029-firmware-scmi-mailbox-use-smt-polling-method.patch \
	file://0030-i2c-stm32-add-support-for-STM32MP25-soc.patch \
	file://0031-Revert-i2c-stm32-do-not-set-the-STOP-condition-on-er.patch \
	file://0032-misc-stm32-use-reset-driver-name-instead-of-default-.patch \
	file://0033-mtd-parsing-partitions-defined-in-OF-when-mtdparts-m.patch \
	file://0034-reset-remove-reset_assert-call-in-reset_release_all.patch \
	file://0035-rtc-stm32-add-new-st-stm32mp25-rtc-compatible-and-ch.patch \
	file://0036-rng-stm32-implement-support-for-STM32MP25x-platforms.patch \
	file://0037-rng-stm32-update-STM32MP15-max-RNG-clock-frequency.patch \
	file://0038-rng-stm32-update-default-RNG-configuration-for-STM32.patch \
	file://0039-serial-stm32-use-STM32_USART_FIFO_TMO_US-define.patch \
	file://0040-serial-stm32-adapt-timeout-to-STM32MP2.patch \
	file://0041-spi-stm32_qspi-Fix-AARCH64-compilation-warnings.patch \
	file://0042-generic-phy-add-set_mode-operation.patch \
	file://0043-usb-dwc3-Call-set_mode-for-the-PHY.patch \
	file://0044-phy-stm32-add-support-for-STM32-USB2-FEMTO-PHY.patch \
	file://0045-phy-stm32-add-usb-role-info-handling-in-STM32-USB2-F.patch \
	file://0046-phy-stm32-Use-regulator_set_enable_if_allowed.patch \
	file://0047-phy-stm32-add-support-for-STM32-USB2PHY.patch \
	file://0048-phy-stm32-remove-internal-vbus-comp-support.patch \
	file://0049-phy-stm32-usb2phy-usb2phy-is-a-clock-provider-of-48M.patch \
	file://0050-usb-hcd-Call-set_mode-for-the-PHY.patch \
	file://0051-usb-dwc3-Add-support-for-STM32-platform-in-dwc3-gene.patch \
	file://0052-usb-dwc3-Remove-usb-device-RUN-bit-enable-during-exi.patch \
	file://0053-usb-dwc3-fix-incrx_mode-setting-for-INCRX_BURST_MODE.patch \
	file://0054-usb-ohci-Skip-flush_dcache_buffer-call-for-zero-leng.patch \
	file://0055-usb-usb2h-add-STM32-usb2h-glue-layer-to-manage-usb2h.patch \
	file://0056-usb-ehci-hcd-Perform-usb-resume-in-ehci_register-cal.patch \
	file://0057-usb-dwc3-Fix-for-usb3-configuration-with-no-usb3-phy.patch \
	file://0058-usb-dwc3-Modify-generic_phy_set_mode-call-to-pass-us.patch \
	file://0059-usb-gadget-f_mass_storage-Add-schedule-in-sleep_thre.patch \
	file://0060-fastboot-improve-the-oem-format-command.patch \
	file://0061-fdt_support-fix-fdt_copy_fixed_partitions-function.patch \
	file://0062-drivers-nvmem-Support-new-linux-syntax-for-nvmem-fix.patch \
	file://0063-ARM-dts-stm32-Sync-DT-with-kernel-v6.6-stm32mp-r2-rc.patch \
	file://0064-clk-stm32-Update-clock-management-for-STM32MP13-25.patch \
	file://0065-arm64-dts-st-Add-support-for-STM32MP25xx-DHCOS-SoM-a.patch \
	"

do_deploy:append:dh-stm32mp13-dhcor-dhsbc() {
        install -D -m 644 ${B}/u-boot.dtb ${DEPLOYDIR}/u-boot.dtb
}

do_deploy:append:dh-stm32mp25-dhsom() {
        install -D -m 644 ${B}/u-boot.dtb ${DEPLOYDIR}/u-boot.dtb
}

# U-Boot release extra version, used as identifier of a patch
# release. Update this every time this recipe is updated. The
# format is -${MACHINE}-date.extraversion. The date is in the
# format YYYYMMDD, the extraversion is used in case there are
# multiple releases during a single day, which is unlikely.
UBOOT_LOCALVERSION:dh-stm32mp-dhsom ?= "-${MACHINE}-20260519.03"
