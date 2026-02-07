#!/bin/bash
#
# Copyright (c) 2019-2020 P3TERX <https://p3terx.com>
#
# This is free software, licensed under the MIT License.
# See /LICENSE for more information.
#
# https://github.com/P3TERX/Actions-OpenWrt
# File name: diy-part2.sh
# Description: OpenWrt DIY script part 2 (After Update feeds)
#

# Modify default IP
#sed -i 's/192.168.1.1/192.168.50.5/g' package/base-files/files/bin/config_generate
sed -i 's/1.90.0/1.92.0/g' feeds/packages/lang/rust/Makefile
sed -i 's/6bfeaddd90ffda2f063492b092bfed925c4b8c701579baf4b1316e021470daac/ebee170bfe4c4dfc59521a101de651e5534f4dae889756a5c97ca9ea40d0c307/g' feeds/packages/lang/rust/Makefile

