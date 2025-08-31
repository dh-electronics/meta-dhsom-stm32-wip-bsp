PACKAGECONFIG:append:dh-stm32mp-dhsom = " \
	kms \
	${@bb.utils.contains('DISTRO_FEATURES', 'wayland', 'wayland', '', d)} \
	"

PACKAGECONFIG:append:dh-stm32mp2-dhsom = " v4l2codecs"
