#!/bin/bash
# Version: 1.0
cd openwrt
cat >> .config <<EOF
CONFIG_TARGET_bcm27xx=y
CONFIG_TARGET_bcm27xx_bcm2710=y
CONFIG_TARGET_bcm27xx_bcm2710_DEVICE_rpi-3=y
CONFIG_LIBCURL_COOKIES=y
CONFIG_LIBCURL_FILE=y
CONFIG_LIBCURL_FTP=y
CONFIG_LIBCURL_HTTP=y
CONFIG_LIBCURL_NO_SMB="!"
CONFIG_LIBCURL_OPENSSL=y
CONFIG_LIBCURL_PROXY=y
# CONFIG_NODEJS_ICU_NONE is not set
# CONFIG_PACKAGE_UnblockNeteaseMusic is not set
# CONFIG_PACKAGE_UnblockNeteaseMusicGo is not set
# CONFIG_PACKAGE_adbyby is not set
CONFIG_PACKAGE_blockd=y
# CONFIG_PACKAGE_boost is not set
CONFIG_PACKAGE_bsdtar=y
CONFIG_PACKAGE_ca-bundle=y
# CONFIG_PACKAGE_coreutils is not set
CONFIG_PACKAGE_curl=y
# CONFIG_PACKAGE_dns2socks is not set
# CONFIG_PACKAGE_etherwake is not set
CONFIG_PACKAGE_fdisk=y
CONFIG_PACKAGE_gzip=y
CONFIG_PACKAGE_htop=y
CONFIG_PACKAGE_ip6tables=y
# CONFIG_PACKAGE_ipset is not set
# CONFIG_PACKAGE_ipt2socks is not set
# CONFIG_PACKAGE_iptables-mod-tproxy is not set
CONFIG_PACKAGE_kmod-crypto-crc32c=y
CONFIG_PACKAGE_kmod-fs-autofs4=y
CONFIG_PACKAGE_kmod-fs-ext4=y
CONFIG_PACKAGE_kmod-fs-ntfs=y
CONFIG_PACKAGE_kmod-fs-squashfs=y
CONFIG_PACKAGE_kmod-fuse=y
# CONFIG_PACKAGE_kmod-ipt-tproxy is not set
CONFIG_PACKAGE_kmod-lib-crc16=y
CONFIG_PACKAGE_kmod-scsi-core=y
CONFIG_PACKAGE_kmod-usb-ehci=y
CONFIG_PACKAGE_kmod-usb-storage=y
CONFIG_PACKAGE_kmod-usb-storage-extras=y
CONFIG_PACKAGE_kmod-usb2=y
CONFIG_PACKAGE_kmod-usb3=y
CONFIG_PACKAGE_libarchive-noopenssl=y
# CONFIG_PACKAGE_libatomic is not set
CONFIG_PACKAGE_libbz2=y
# CONFIG_PACKAGE_libcares is not set
CONFIG_PACKAGE_libcurl=y
# CONFIG_PACKAGE_libev is not set
# CONFIG_PACKAGE_libevent2 is not set
CONFIG_PACKAGE_libexpat=y
CONFIG_PACKAGE_libfdisk=y
# CONFIG_PACKAGE_libhttp-parser is not set
# CONFIG_PACKAGE_libipset is not set
CONFIG_PACKAGE_liblzma=y
# CONFIG_PACKAGE_libmbedtls is not set
# CONFIG_PACKAGE_libmnl is not set
CONFIG_PACKAGE_libmount=y
CONFIG_PACKAGE_libncurses=y
# CONFIG_PACKAGE_libnet-1.2.x is not set
# CONFIG_PACKAGE_libnghttp2 is not set
# CONFIG_PACKAGE_libpcap is not set
# CONFIG_PACKAGE_libsodium is not set
# CONFIG_PACKAGE_libstdcpp is not set
# CONFIG_PACKAGE_libuv is not set
CONFIG_PACKAGE_lsblk=y
# CONFIG_PACKAGE_luci-app-accesscontrol is not set
# CONFIG_PACKAGE_luci-app-adbyby-plus is not set
# CONFIG_PACKAGE_luci-app-ddns is not set
# CONFIG_PACKAGE_luci-app-ssr-plus is not set
# CONFIG_PACKAGE_luci-app-ssr-plus_INCLUDE_Redsocks2 is not set
# CONFIG_PACKAGE_luci-app-ssr-plus_INCLUDE_ShadowsocksR_Server is not set
# CONFIG_PACKAGE_luci-app-ssr-plus_INCLUDE_Trojan is not set
# CONFIG_PACKAGE_luci-app-ssr-plus_INCLUDE_V2ray is not set
# CONFIG_PACKAGE_luci-app-ssr-plus_INCLUDE_V2ray_plugin is not set
# CONFIG_PACKAGE_luci-app-unblockmusic is not set
# CONFIG_PACKAGE_luci-app-upnp is not set
# CONFIG_PACKAGE_luci-app-vlmcsd is not set
# CONFIG_PACKAGE_luci-app-vsftpd is not set
# CONFIG_PACKAGE_luci-app-wol is not set
CONFIG_PACKAGE_luci-proto-ipv6=y
# CONFIG_PACKAGE_microsocks is not set
# CONFIG_PACKAGE_miniupnpd is not set
CONFIG_PACKAGE_nano=y
# CONFIG_PACKAGE_node is not set
CONFIG_PACKAGE_ntfs-3g=y
CONFIG_PACKAGE_odhcp6c=y
CONFIG_PACKAGE_odhcp6c_ext_cer_id=0
CONFIG_PACKAGE_odhcpd-ipv6only=y
CONFIG_PACKAGE_odhcpd_ipv6only_ext_cer_id=0
# CONFIG_PACKAGE_redsocks2 is not set
CONFIG_PACKAGE_screen=y
# CONFIG_PACKAGE_shadowsocks-libev-ss-local is not set
# CONFIG_PACKAGE_shadowsocks-libev-ss-redir is not set
# CONFIG_PACKAGE_shadowsocksr-libev-alt is not set
# CONFIG_PACKAGE_shadowsocksr-libev-server is not set
# CONFIG_PACKAGE_shadowsocksr-libev-ssr-local is not set
# CONFIG_PACKAGE_simple-obfs is not set
# CONFIG_PACKAGE_tcpping is not set
CONFIG_PACKAGE_terminfo=y
# CONFIG_PACKAGE_trojan is not set
CONFIG_PACKAGE_unzip=y
# CONFIG_PACKAGE_v2ray is not set
# CONFIG_PACKAGE_v2ray-plugin is not set
CONFIG_PACKAGE_vim=y
# CONFIG_PACKAGE_vlmcsd is not set
# CONFIG_PACKAGE_vsftpd-alt is not set
CONFIG_PACKAGE_xz-utils=y
CONFIG_PACKAGE_zip=y
CONFIG_TARGET_EXT4_BLOCKSIZE=4096
CONFIG_TARGET_EXT4_BLOCKSIZE_4K=y
CONFIG_TARGET_EXT4_RESERVED_PCT=0
CONFIG_TARGET_ROOTFS_EXT4FS=y
# CONFIG_UnblockNeteaseMusic_Go is not set
# CONFIG_UnblockNeteaseMusic_NodeJS is not set
# CONFIG_NODEJS_ICU_NONE is not set
# CONFIG_NODEJS_ICU_SMALL is not set
# CONFIG_NODEJS_ICU_SYSTEM is not set
# CONFIG_TARGET_bcm27xx_bcm2708_DEVICE_rpi is not set
# CONFIG_TARGET_x86_64 is not set
# CONFIG_TARGET_x86_64_Generic is not set
# CONFIG_TARGET_x86_generic is not set
# CONFIG_TARGET_x86_geode is not set
# CONFIG_TARGET_x86_legacy is not set
# CONFIG_TARGET_x86_zen is not set
EOF
# Add luci-theme-opentomcat
git clone https://github.com/Leo-Jo-My/luci-theme-opentomcat.git theme-temp/luci-theme-opentomcat
rm -rf theme-temp/luci-theme-opentomcat/LICENSE
rm -rf theme-temp/luci-theme-opentomcat/README.md
mv -f theme-temp/luci-theme-opentomcat package/lean/
cat >> .config <<EOF
CONFIG_PACKAGE_luci-theme-opentomcat=y
EOF
rm -rf theme-temp
default_theme='opentomcat'
sed -i "s/bootstrap/$default_theme/g" feeds/luci/modules/luci-base/root/etc/config/luci
# Add luci-app-vssr
git clone https://github.com/jerrykuku/lua-maxminddb.git package-temp/lua-maxminddb
git clone https://github.com/jerrykuku/luci-app-vssr.git package-temp/luci-app-vssr
mv -f package-temp/lua-maxminddb package/lean/
mv -f package-temp/luci-app-vssr package/lean/
cat >> .config <<EOF
CONFIG_PACKAGE_lua-maxminddb=y
CONFIG_PACKAGE_luci-app-vssr=y
EOF
rm -rf package-temp