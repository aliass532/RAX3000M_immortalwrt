#!/bin/bash
#
# Copyright (c) 2019-2020 P3TERX <https://p3terx.com>
#
# This is free software, licensed under the MIT License.
# See /LICENSE for more information.
#
# https://github.com/P3TERX/Actions-OpenWrt
# File name: diy-part1.sh
# Description: OpenWrt DIY script part 1 (Before Update feeds)
#

# Uncomment a feed source
#sed -i 's/^#\(.*helloworld\)/\1/' feeds.conf.default

# Add a feed source
echo "src-git PWpackages https://github.com/xiaorouji/openwrt-passwall.git;packages" >> feeds.conf.default
echo "src-git PWluci https://github.com/xiaorouji/openwrt-passwall.git;luci" >> feeds.conf.default
git clone https://github.com/aliass532/luci-app-eqos package/eqos
sed -i 's/192.168.1.1/192.168.11.1/g' package/base-files/files/bin/config_generate
#include/kernel-version.mk
sed -i 's/LINUX_VERSION-5.4 = .*$/LINUX_VERSION-5.10 = .117/g' include/kernel-version.mk
sed -i 's/LINUX_KERNEL_HASH-5.4.*$/LINUX_KERNEL_HASH-5.10.117 = 703ef7112cdf889950dd864ba482d04bd87d83d3df3a98ab8d4ba8a7ab1ddcc7/g' include/kernel-version.mk
#target/linux/ramips/Makefile
sed -i 's/KERNEL_PATCHVER:=5.4/KERNEL_PATCHVER:=5.10/g' target/linux/ramips/Makefile
sed -i 's/KERNEL_TESTING_PATCHVER:=5.4/KERNEL_TESTING_PATCHVER:=5.10/g' target/linux/ramips/Makefile
#echo 'src-git helloworld https://github.com/fw876/helloworld' >>feeds.conf.default
#echo 'src-git passwall https://github.com/xiaorouji/openwrt-passwall' >>feeds.conf.default
