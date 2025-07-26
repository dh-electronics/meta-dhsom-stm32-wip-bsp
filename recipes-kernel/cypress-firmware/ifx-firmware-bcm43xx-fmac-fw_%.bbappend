do_install:append:dh-stm32mp13-dhcor-dhsbc () {
	# Symlink the firmware name to match board type
	ln -s brcmfmac43439-sdio.clm_blob \
		${D}${nonarch_base_libdir}/firmware/brcm/brcmfmac43439-sdio.dh,stm32mp135f-dhcor-dhsbc.clm_blob
	ln -s brcmfmac43439-sdio.bin \
		${D}${nonarch_base_libdir}/firmware/brcm/brcmfmac43439-sdio.dh,stm32mp135f-dhcor-dhsbc.bin
}

FILES:${PN}-bcm43439-sdio:append:dh-stm32mp13-dhcor-dhsbc = " \
	${nonarch_base_libdir}/firmware/brcm/brcmfmac43439-sdio.dh,stm32mp135f-dhcor-dhsbc.clm_blob \
	${nonarch_base_libdir}/firmware/brcm/brcmfmac43439-sdio.dh,stm32mp135f-dhcor-dhsbc.bin \
	"

do_install:append:dh-stm32mp1-dhcor-avenger96 () {
	# Symlink the firmware name to match board type
	ln -s brcmfmac43455-sdio.clm_blob \
		${D}${nonarch_base_libdir}/firmware/brcm/brcmfmac43455-sdio.arrow,stm32mp157a-avenger96.clm_blob
	ln -s brcmfmac43455-sdio.bin \
		${D}${nonarch_base_libdir}/firmware/brcm/brcmfmac43455-sdio.arrow,stm32mp157a-avenger96.bin
}

FILES:${PN}-bcm43455-sdio:append:dh-stm32mp1-dhcor-avenger96 = " \
	${nonarch_base_libdir}/firmware/brcm/brcmfmac43455-sdio.arrow,stm32mp157a-avenger96.clm_blob \
	${nonarch_base_libdir}/firmware/brcm/brcmfmac43455-sdio.arrow,stm32mp157a-avenger96.bin \
	"

do_install:append:dh-stm32mp25-dhcos-bb () {
	# Symlink the firmware name to match board type
	ln -s brcmfmac55500-sdio.clm_blob \
		${D}${nonarch_base_libdir}/firmware/brcm/cyfmac55500-sdio.dh,stm32mp255c-dhcos-bb.clm_blob
	ln -s brcmfmac55500-sdio.trxse \
		${D}${nonarch_base_libdir}/firmware/brcm/cyfmac55500-sdio.dh,stm32mp255c-dhcos-bb.trxse
}

FILES:${PN}-bcm55500-sdio:append:dh-stm32mp25-dhcos-bb = " \
	${nonarch_base_libdir}/firmware/brcm/cyfmac55500-sdio.dh,stm32mp255c-dhcos-bb.clm_blob \
	${nonarch_base_libdir}/firmware/brcm/cyfmac55500-sdio.dh,stm32mp255c-dhcos-bb.trxse \
	"

do_install:append:dh-stm32mp25-dhcos-dhsbc () {
	# Symlink the firmware name to match board type
	ln -s brcmfmac55500-sdio.clm_blob \
		${D}${nonarch_base_libdir}/firmware/brcm/cyfmac55500-sdio.dh,stm32mp255c-dhcos-dhsbc.clm_blob
	ln -s brcmfmac55500-sdio.trxse \
		${D}${nonarch_base_libdir}/firmware/brcm/cyfmac55500-sdio.dh,stm32mp255c-dhcos-dhsbc.trxse
}

FILES:${PN}-bcm55500-sdio:append:dh-stm32mp25-dhcos-dhsbc = " \
	${nonarch_base_libdir}/firmware/brcm/cyfmac55500-sdio.dh,stm32mp255c-dhcos-dhsbc.clm_blob \
	${nonarch_base_libdir}/firmware/brcm/cyfmac55500-sdio.dh,stm32mp255c-dhcos-dhsbc.trxse \
	"
