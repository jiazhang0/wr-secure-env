#
# Copyright (C) 2017 Wind River Systems, Inc.
#

INITRAMFS_EXTRA_INSTALL = "\
    initramfs-init-server \
    ${@bb.utils.contains('DISTRO_FEATURES', 'ima', 'packagegroup-ima-initramfs', '', d)} \
    ${@bb.utils.contains('DISTRO_FEATURES', 'encrypted-storage', 'packagegroup-encrypted-storage-initramfs', '', d)} \
"
