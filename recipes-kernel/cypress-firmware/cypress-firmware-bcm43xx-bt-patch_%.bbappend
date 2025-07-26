do_install:append:dh-stm32mp13-dhcor-dhsbc () {
	# Symlink the firmware name to match board type
	ln -s CYW4343A2.1YN.hcd \
	      ${D}${nonarch_base_libdir}/firmware/brcm/BCM4343A2.dh,stm32mp135f-dhcor-dhsbc.hcd
	ln -s CYW4343A2.1YN.hcd \
	      ${D}${nonarch_base_libdir}/firmware/brcm/BCM.dh,stm32mp135f-dhcor-dhsbc.hcd
}

FILES:${PN}-bcm4343a2:append:dh-stm32mp13-dhcor-dhsbc = " \
	${nonarch_base_libdir}/firmware/brcm/BCM4343A2.dh,stm32mp135f-dhcor-dhsbc.hcd \
	${nonarch_base_libdir}/firmware/brcm/BCM.dh,stm32mp135f-dhcor-dhsbc.hcd \
	"

do_install:append:dh-stm32mp1-dhcor-avenger96 () {
	# Symlink the firmware name to match board type
	ln -s CYW4345C0.1MW.hcd \
	      ${D}${nonarch_base_libdir}/firmware/brcm/BCM4345C0.arrow,stm32mp157a-avenger96.hcd
	ln -s CYW4345C0.1MW.hcd \
	      ${D}${nonarch_base_libdir}/firmware/brcm/BCM.arrow,stm32mp157a-avenger96.hcd
}

FILES:${PN}-bcm4345c0:append:dh-stm32mp1-dhcor-avenger96 = " \
	${nonarch_base_libdir}/firmware/brcm/BCM4345C0.arrow,stm32mp157a-avenger96.hcd \
	${nonarch_base_libdir}/firmware/brcm/BCM.arrow,stm32mp157a-avenger96.hcd \
	"

do_install:append:dh-stm32mp25-dhcos-bb () {
	# Symlink the firmware name to match board type
	ln -s BCM55500A1.2FY.2GY.hcd \
	      ${D}${nonarch_base_libdir}/firmware/brcm/BCM55500A1.stm32mp255c-dhcos-bb.hcd
	ln -s BCM55500A1.2FY.2GY.hcd \
	      ${D}${nonarch_base_libdir}/firmware/brcm/BCM.dh,stm32mp255c-dhcos-bb.hcd
}

FILES:${PN}-cyw55500a1-2fy:append:dh-stm32mp25-dhcos-bb = " \
	${nonarch_base_libdir}/firmware/brcm/BCM55500A1.stm32mp255c-dhcos-bb.hcd \
	${nonarch_base_libdir}/firmware/brcm/BCM.dh,stm32mp255c-dhcos-bb.hcd \
	"

do_install:append:dh-stm32mp25-dhcos-dhsbc () {
	# Symlink the firmware name to match board type
	ln -s BCM55500A1.2FY.2GY.hcd \
	      ${D}${nonarch_base_libdir}/firmware/brcm/BCM55500A1.stm32mp255c-dhcos-dhsbc.hcd
	ln -s BCM55500A1.2FY.2GY.hcd \
	      ${D}${nonarch_base_libdir}/firmware/brcm/BCM.dh,stm32mp255c-dhcos-dhsbc.hcd
}

FILES:${PN}-cyw55500a1-2fy:append:dh-stm32mp25-dhcos-dhsbc = " \
	${nonarch_base_libdir}/firmware/brcm/BCM55500A1.stm32mp255c-dhcos-dhsbc.hcd \
	${nonarch_base_libdir}/firmware/brcm/BCM.dh,stm32mp255c-dhcos-dhsbc.hcd \
	"
