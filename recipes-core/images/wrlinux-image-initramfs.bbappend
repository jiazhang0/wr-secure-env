#
# Copyright (C) 2017 Wind River Systems, Inc.
#

include image-initramfs.inc

IMAGE_INSTALL_INITRAMFS_append = " ${INITRAMFS_EXTRA_INSTALL}"
