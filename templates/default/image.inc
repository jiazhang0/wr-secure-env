#
# Copyright (C) 2017 Wind River Systems, Inc.
#

# Install initramfs to rootfs
IMAGE_INSTALL += "${@'kernel-initramfs' if d.getVar('INITRAMFS_IMAGE', True) else ''}"
