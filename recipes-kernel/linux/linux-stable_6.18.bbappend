FILESEXTRAPATHS:prepend := "${THISDIR}/${PN}:"

KBRANCH:dh-stm32mp2-dhsom ?= "master"
KMACHINE:dh-stm32mp2-dhsom ?= "dh-stm32mp2-dhsom"
COMPATIBLE_MACHINE:dh-stm32mp2-dhsom = "(dh-stm32mp2-dhsom)"

DEPENDS:append:dh-stm32mp2-dhsom = " lzop-native "
SRC_URI:append:dh-stm32mp2-dhsom = " \
	file://${BPV}/dh-stm32mp2-dhsom;type=kmeta;destsuffix=${BPV}/dh-stm32mp2-dhsom \
	file://common/dh-stm32mp2-dhsom;type=kmeta;destsuffix=common/dh-stm32mp2-dhsom \
	"
KERNEL_FEATURES:dh-stm32mp2-dhsom = " dh-stm32mp2-dhsom-standard.scc "
