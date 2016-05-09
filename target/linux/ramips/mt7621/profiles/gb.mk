#
# Copyright (C) 2016 OpenWrt.org
#
# This is free software, licensed under the GNU General Public License v2.
# See /LICENSE for more information.
#

define Profile/GB-N1
	NAME:=GB-N1
	PACKAGES:=\
		kmod-usb-core kmod-usb3  \
		kmod-ledtrig-usbdev kmod-ata-core kmod-ata-ahci \
		kmod-usb3-mt7621
endef

define Profile/GB-N1/Description
	Package set for the GB-N1
endef
$(eval $(call Profile,GB-N1))

define Profile/GB-N2
	NAME:=GB-N2
	PACKAGES:=\
		kmod-usb-core kmod-usb3  \
		kmod-ledtrig-usbdev kmod-ata-core kmod-ata-ahci \
		kmod-usb3-mt7621
endef

define Profile/GB-N2/Description
	Package set for the GB-N2
endef
$(eval $(call Profile,GB-N2))

define Profile/GB-R1
	NAME:=GB-R1
	PACKAGES:=\
		kmod-usb-core kmod-usb3  \
		kmod-ledtrig-usbdev kmod-ata-core kmod-ata-ahci \
		kmod-usb3-mt7621
endef

define Profile/GB-R1/Description
	Package set for the GB-R1
endef
$(eval $(call Profile,GB-R1))
