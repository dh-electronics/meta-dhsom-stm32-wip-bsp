LICENSE = "GPL-2.0-only"

# board specific branches
KBRANCH ?= "master"
LINUX_VERSION ?= "6.18-rc5"

SRCREV_machine ?= "e9a6fb0bcdd7609be6969112f3fbfcce3b1d4a7c"
SRCREV_meta ?= "1b7be381fab5faa526d242d2e23e98481160fd1a"

require recipes-kernel/linux/linux-yocto.inc

SRC_URI = "git://git.kernel.org/pub/scm/linux/kernel/git/torvalds/linux.git;protocol=https;name=machine;nobranch=1; \
           git://git.yoctoproject.org/yocto-kernel-cache;type=kmeta;protocol=https;name=meta;branch=master;destsuffix=${KMETA}"

LIC_FILES_CHKSUM = "file://COPYING;md5=6bc538ed5bd9a7fc9398086aedcd7e46"

require linux-stable.inc
