# board specific branches
KBRANCH ?= "master"
LINUX_VERSION ?= "6.17-rc6"

SRCREV_machine ?= "846bd2225ec3cfa8be046655e02b9457ed41973e"
SRCREV_meta ?= "1b7be381fab5faa526d242d2e23e98481160fd1a"

require recipes-kernel/linux/linux-yocto.inc

SRC_URI = "git://git.kernel.org/pub/scm/linux/kernel/git/next/linux-next.git;protocol=https;name=machine;nobranch=1; \
           git://git.yoctoproject.org/yocto-kernel-cache;type=kmeta;protocol=https;name=meta;branch=master;destsuffix=${KMETA}"

LIC_FILES_CHKSUM = "file://COPYING;md5=6bc538ed5bd9a7fc9398086aedcd7e46"

require linux-next.inc
