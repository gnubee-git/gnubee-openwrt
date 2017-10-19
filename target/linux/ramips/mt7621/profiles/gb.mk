#
# Copyright (C) 2016 OpenWrt.org
#
# This is free software, licensed under the GNU General Public License v2.
# See /LICENSE for more information.
#

define Profile/GB-PC1
	NAME:=GnuBee Personal Cloud One
	PACKAGES:=\
		kmod-usb-core kmod-usb3  \
		kmod-ledtrig-usbdev kmod-ata-core kmod-ata-ahci \
		kmod-usb3-mt7621
endef

define Profile/GB-PC1/Description
	Package set for the GB-PC1
endef
$(eval $(call Profile,GB-PC1))

define Profile/GB-PC2
        NAME:=GnuBee Personal Cloud Two
        PACKAGES:=\
                kmod-usb-core kmod-usb3  \
                kmod-ledtrig-usbdev kmod-ata-core kmod-ata-ahci \
                kmod-usb3-mt7621
endef

define Profile/GB-PC2/Description
        Package set for the GB-PC2
endef
$(eval $(call Profile,GB-PC2))
