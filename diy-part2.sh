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

sed -i "s/set system.@system\[-1\].hostname='OpenWrt'/set system.@system[-1].hostname='PureWrt'/" package/base-files/files/bin/config_generate

sed -i '/<tr><td width="33%"><%:CPU usage (%)%><\/td><td id="cpuusage">-<\/td><\/tr>/a <tr><td width="33%">系统信息<\/td><td>自用系统，定制By黄云，干净卫生无广告，放心食用<\/td><\/tr>' package/lean/autocore/files/x86/index.htm


# Modify default IP
sed -i 's/192.168.1.1/192.168.100.2/g' package/base-files/files/bin/config_generate
