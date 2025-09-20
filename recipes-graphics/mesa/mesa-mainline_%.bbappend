FILESEXTRAPATHS:prepend := "${THISDIR}/files:"
# MESA_BUILD_TYPE = "debug"
PACKAGECONFIG:append:dh-stm32mp-dhsom = " \
	etnaviv kmsro gallium \
	${@bb.utils.contains('DISTRO_FEATURES', 'wayland', 'wayland', '', d)} \
	"

SRC_URI:append:dh-stm32mp2-dhsom = " \
	file://0001-etnaviv-hwdb-update-gc_feature_database-from-ST.patch \
	file://0002-etnaviv-Turn-ETNA_CORE_-into-ETNA_FEATURE_CORE_.patch \
	"
