#
# Copyright (C) 2017 Wind River Systems, Inc.
#

FILESEXTRAPATHS_prepend := "${THISDIR}/grub-efi:"

SRC_URI += "\
    file://boot-menu-hddimg.inc \
"

do_install_append_class-target() {
    install -m 0600 "${WORKDIR}/boot-menu-hddimg.inc" "${D}${EFI_BOOT_PATH}"
}

fakeroot python do_sign_append_class-target() {
    uks_sel_sign(dir + 'boot-menu-hddimg.inc', d)
}

CONFFILES_${PN} += "\
    ${EFI_BOOT_PATH}/boot-menu-hddimg.inc \
"
