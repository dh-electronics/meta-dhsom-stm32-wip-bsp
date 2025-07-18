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
	file://0001-clk-stm32-Pass-udevice-pointer-to-clk_register_compo.patch \
	file://0002-phy-Reset-init-count-on-phy-exit-failure.patch \
	file://0003-ARM-dts-stm32-Keep-the-reg11-and-reg18-regulators-al.patch \
	file://0004-ARM-dts-stm32-Introduce-DH-STM32MP13x-target.patch \
	file://0005-board-dhelectronics-Move-dh_add_item_number_and_seri.patch \
	file://0006-ARM-stm32-Read-values-from-M24256-write-lockable-pag.patch \
	file://0007-ARM-stm32-Add-MAC-address-readout-from-fuses-on-DH-S.patch \
	file://0008-board-dhelectronics-Check-pointer-before-access-in-d.patch \
	file://0009-board-dhelectronics-Use-isascii-before-isprint-in-dh.patch \
	file://0010-ARM-stm32-Perform-node-compatible-check-for-KS8851-e.patch \
	"

SRC_URI:append:dh-stm32mp2-dhsom = " \
	file://boot.cmd \
	file://fw_env.config \
	file://0001-clk-scmi-add-compatibility-with-clock-protocol-2.0.patch \
	file://0002-clk-stm32mp25-Add-clock-driver-support.patch \
	file://0003-clk-stm32mp25-implement-clock-check-security-functio.patch \
	file://0004-clk-add-CONFIG_CLK_AUTO_ID.patch \
	file://0005-clk-fixed_rate-configure-clock-ID-with-CONFIG_CLK_AU.patch \
	file://0006-clk-scmi-manage-properly-the-clk-identifier-with-CCF.patch \
	file://0007-phy-stm32-usbphyc-manage-properly-the-clk-identifier.patch \
	file://0008-clk-stm32-fix-clock-counter.patch \
	file://0009-reset-stm32mp25-add-stm32mp25-reset-driver.patch \
	file://0010-ARM-dts-stm32-switch-from-fixed-to-scmi-clocks-for-s.patch \
	file://0011-stm32mp-Add-tamp_nvram-driver.patch \
	file://0012-gpio-stm32-gpio-prevent-the-use-of-the-secure-protec.patch \
	file://0013-dm-gpio-Add-GPIOF_PROTECTED-flag.patch \
	file://0014-gpio-stm32_gpio-flag-secured-pin-as-protected.patch \
	file://0015-pinctrl-pinctrl_stm32-prevent-the-use-of-the-secure-.patch \
	file://0016-remoteproc-Add-remoteproc-trusted-application-suppor.patch \
	file://0017-remoteproc-stm32-add-support-of-the-remote-proc-mana.patch \
	file://0018-hwspinlock-support-hwlock-cells-2-in-default-binding.patch \
	file://0019-reset-remove-reset_assert-call-in-reset_release_all.patch \
	file://0020-env-mmc-select-GPT-env-partition-by-type-guid.patch \
	file://0021-mtd-parsing-partitions-defined-in-OF-when-mtdparts-m.patch \
	file://0022-spi-stm32_qspi-Fix-AARCH64-compilation-warnings.patch \
	file://0023-serial-stm32-use-STM32_USART_FIFO_TMO_US-define.patch \
	file://0024-serial-stm32-adapt-timeout-to-STM32MP2.patch \
	file://0025-pinctrl-pinctrl_stm32-Add-stm32mp257-pinctrl-compati.patch \
	file://0026-pinctrl-pinctrl_stm32-support-IO-synchronization-par.patch \
	file://0027-pinctrl-stm32-rename-PIOCFGR-to-ADVCFGR.patch \
	file://0028-stm32mp-update-stm32_smc-function-to-be-compatible-w.patch \
	file://0029-board-st-stm32mp2-add-dfu_usb_get_reset-TEMP.patch \
	file://0030-board-st-stm32mp2-add-g_dnl_bind_fixup.patch \
	file://0031-board-stm32mp2-add-ft_board_setup.patch \
	file://0032-generic-phy-add-set_mode-operation.patch \
	file://0033-usb-dwc3-Call-set_mode-for-the-PHY.patch \
	file://0034-phy-stm32-add-support-for-STM32-USB2-FEMTO-PHY.patch \
	file://0035-phy-stm32-add-usb-role-info-handling-in-STM32-USB2-F.patch \
	file://0036-arm-stm32mp-simply-reset-the-TAMP_COPRO_STATE-backup.patch \
	file://0037-arm-stm32mp-add-support-of-TAMP_COPRO-backup-registe.patch \
	file://0038-i2c-stm32-add-support-for-STM32MP25-soc.patch \
	file://0039-Revert-i2c-stm32-do-not-set-the-STOP-condition-on-er.patch \
	file://0040-usb-hcd-Call-set_mode-for-the-PHY.patch \
	file://0041-usb-dwc3-Add-support-for-STM32-platform-in-dwc3-gene.patch \
	file://0042-usb-dwc3-Remove-usb-device-RUN-bit-enable-during-exi.patch \
	file://0043-usb-dwc3-fix-incrx_mode-setting-for-INCRX_BURST_MODE.patch \
	file://0044-usb-ohci-Skip-flush_dcache_buffer-call-for-zero-leng.patch \
	file://0045-usb-usb2h-add-STM32-usb2h-glue-layer-to-manage-usb2h.patch \
	file://0046-usb-ehci-hcd-Perform-usb-resume-in-ehci_register-cal.patch \
	file://0047-usb-dwc3-Fix-for-usb3-configuration-with-no-usb3-phy.patch \
	file://0048-memory-Add-STM32-Octo-Memory-Interface-driver-suppor.patch \
	file://0049-memory-stm32-omi-Add-delay-block-support.patch \
	file://0050-ioport-Add-resource-check-helpers.patch \
	file://0051-misc-Add-STM32-Octo-Memory-Manager-OMM-support.patch \
	file://0052-spi-Add-STM32MP2-Octo-SPI-driver-support.patch \
	file://0053-spi-stm32_ospi-Add-calibration-algorithm.patch \
	file://0054-spi-stm32_ospi-stop-the-delay-block-before-stating-t.patch \
	file://0055-spi-stm32_ospi-allow-to-sample-later-the-data.patch \
	file://0056-spi-stm32_ospi-Remove-unused-stm32_ospi_ids-struct.patch \
	file://0057-memory-stm32-omi-rework-stm32_omi_dlyb_stop-API.patch \
	file://0058-memory-stm32-omi-Remove-stm32_omi_dlyb_stop-return-v.patch \
	file://0059-memory-stm32-omi-fix-dlyb-configuration-in-bypass-mo.patch \
	file://0060-watchdog-wdt-uclass.c-add-wdt_set_force_start-helper.patch \
	file://0061-watchdog-arm_smc_wdt-get-wdt-status-through-SMCWD_GE.patch \
	file://0062-gpio-stm32_gpio-support-RIF-semaphore-handling.patch \
	file://0063-gpio-stm32_gpio-release-RIF-semaphores-before-OS-boo.patch \
	file://0064-rtc-stm32-add-new-st-stm32mp25-rtc-compatible-and-ch.patch \
	file://0065-remoteproc-tee-add-firmware-ID-parameter-on-open_ses.patch \
	file://0066-remoteproc-move-COPRO-state-definition-in-driver.patch \
	file://0067-remoteproc-add-support-of-the-stm32mp25-device.patch \
	file://0068-rng-stm32-implement-support-for-STM32MP25x-platforms.patch \
	file://0069-usb-dwc3-Modify-generic_phy_set_mode-call-to-pass-us.patch \
	file://0070-board-stm32mp2-Add-env_sf_init_addr-weak-function.patch \
	file://0071-stm32mp2-Limit-DDR-usage-under-4GB-boundary-for-STM3.patch \
	file://0072-arm-stm32-correctly-handle-STM32_DDR_SIZE-for-STM32M.patch \
	file://0073-fdt_support-fix-fdt_copy_fixed_partitions-function.patch \
	file://0074-memory-stm32-Add-JEDEC-flashes-support.patch \
	file://0075-rng-stm32-update-STM32MP15-max-RNG-clock-frequency.patch \
	file://0076-remoteproc-rename-fw_id-field-to-proc_id.patch \
	file://0077-remoteproc-add-support-of-OP-TEE-loading-based-on-co.patch \
	file://0078-remoteproc-stm32_rproc-save-the-phys-resource-table-.patch \
	file://0079-remoteproc-stm32_rproc-Fix-typo-in-the-description-o.patch \
	file://0080-match-stm32-remove-useless-STM32_RESET-config-from-K.patch \
	file://0081-match-stm32mp-remove-useless-STM32_RESET-config-from.patch \
	file://0082-stm32mp2-update-part-number-for-STM32MP251-3.patch \
	file://0083-misc-stm32_omm-always-clock-OSPI-instances-if-mux-is.patch \
	file://0084-board-st-stm32mp2-update-user-button-management.patch \
	file://0085-fastboot-improve-the-oem-format-command.patch \
	file://0086-watchdog-stm32mp-check-the-watchdog-status.patch \
	file://0087-phy-stm32-Use-regulator_set_enable_if_allowed.patch \
	file://0088-remoteproc-remove-tamp-copro-definition-for-stmp32mp.patch \
	file://0089-phy-stm32-add-support-for-STM32-USB2PHY.patch \
	file://0090-misc-stm32-use-reset-driver-name-instead-of-default-.patch \
	file://0091-usb-gadget-f_mass_storage-Add-schedule-in-sleep_thre.patch \
	file://0092-gpio-stmfx-Use-correct-flag-values.patch \
	file://0093-clk-scmi-do-not-register-clock-without-a-name.patch \
	file://0094-phy-stm32-remove-internal-vbus-comp-support.patch \
	file://0095-misc-stm32-ipcc-support-ipcc-probe-without-clock.patch \
	file://0096-misc-stm32-ipcc-fix-binding-issue.patch \
	file://0097-arm-mach-stm32mp-stm32mp2-map-boot-alias-1-for-inter.patch \
	file://0098-dm-button-add-support-for-disabling-GPIO-buttons-via.patch \
	file://0099-drivers-nvmem-Support-new-linux-syntax-for-nvmem-fix.patch \
	file://0100-phy-stm32-usb2phy-usb2phy-is-a-clock-provider-of-48M.patch \
	file://0101-mach-stm32-add-mutifunction-timer-support-for-stm32m.patch \
	file://0102-stm32mp-bsec-add-support-for-non-secure-mirror.patch \
	file://0103-stm32mp2-update-register-used-by-BL31-for-boot-param.patch \
	file://0104-watchdog-wdt-uclass.c-Replace-wdt_set_force_start-by.patch \
	file://0105-watchdog-don-t-autostart-watchdog-on-STM32MP-boards.patch \
	file://0106-autoboot-propagate-boot-index.patch \
	file://0107-ARM-stm32mp-fix-RIFSC-semaphores-acquition.patch \
	file://0108-firmware-scmi-fix-uninitialized-flags.patch \
	file://0109-firmware-scmi-smt-add-a-polling-completion-method.patch \
	file://0110-firmware-scmi-mailbox-use-smt-polling-method.patch \
	file://0111-rng-stm32-update-default-RNG-configuration-for-STM32.patch \
	file://0112-mmc-stm32_sdmmc2-avoid-infinite-while-loop.patch \
	file://0113-misc-stm32_omm-manage-RIF-semaphores-release.patch \
	file://0114-ARM-stm32mp-replace-RIFSC-check-access-APIs.patch \
	file://0115-ARM-dts-stm32-Sync-DT-with-kernel-v6.6-stm32mp-r2-rc.patch \
	file://0116-fixup-stm32mp2-Limit-DDR-usage-under-4GB-boundary-fo.patch \
	file://0117-fixup-clk-scmi-add-compatibility-with-clock-protocol.patch \
	file://0118-reset-stm32-Fix-header-misuse.patch \
	file://0119-net-dwc_eth_qos-Fix-support-for-stm32mp2-platform.patch \
	file://0120-arm64-dts-st-Add-support-for-STM32MP25xx-DHCOS-SoM-a.patch \
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
UBOOT_LOCALVERSION:dh-stm32mp1-dhsom ?= "-${MACHINE}-20250920.01"
