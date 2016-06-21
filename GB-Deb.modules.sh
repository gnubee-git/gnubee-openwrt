#!/bin/bash
# Pack external modules for Debian rootfs

LINUX=4.4
VERSION=$(echo ${LINUX}$(grep "^LINUX_VERSION-${LINUX}" include/kernel-version.mk | cut -d' ' -f 3))

ARCH=$(sed -n 's/^CONFIG_ARCH=//p' .config | sed 's/^"\|"$//g')
CPU_TYPE=$(sed -n 's/^CONFIG_CPU_TYPE=//p' .config | sed 's/^"\|"$//g')
CONFIG_LIBC=$(sed -n 's/^CONFIG_LIBC=//p' .config | sed 's/^"\|"$//g')
CONFIG_LIBC_VERSION=$(sed -n 's/^CONFIG_LIBC_VERSION=//p' .config | sed 's/^"\|"$//g')
CONFIG_TARGET_BOARD=$(sed -n 's/^CONFIG_TARGET_BOARD=//p' .config | sed 's/^"\|"$//g')
CONFIG_TARGET_SUBTARGET=$(sed -n 's/^CONFIG_TARGET_SUBTARGET=//p' .config | sed 's/^"\|"$|_$//g')

BOARD=${CONFIG_TARGET_SUBTARGET}mt7621

VERSION=$(sed -n 's/^LINUX_VERSION:=//p' target/linux/${CONFIG_TARGET_BOARD}/${CONFIG_TARGET_SUBTARGET}/Makefile | cut -f 1 -d-)

TARGET_DIR=build_dir/target-${ARCH}_${CPU_TYPE}_${CONFIG_LIBC}-${CONFIG_LIBC_VERSION}/linux-${CONFIG_TARGET_BOARD}_${BOARD}/linux-${VERSION}

cd $TARGET_DIR
find . -name "*.ko" -or -wholename "./modules.builtin" -or -wholename "./modules.order" | tar -cvzf modules.$VERSION.tar.gz -T -
cd -
scp $TARGET_DIR/modules.$VERSION.tar.gz bin/${CONFIG_TARGET_BOARD}/

