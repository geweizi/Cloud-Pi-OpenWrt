# 云编译 Raspberry Pi OpenWrt 固件
说明：
- 本项目使用 Github Actions 下载 [Lean](https://github.com/coolsnowwolf/lede) 的 `Openwrt` 源码仓库，进行云编译。
- 本项目使用定时编译（北京时间每周日下午4点开始自动运行编译）及触发编译（更新script.sh后可开始编译）两种方式。
- 本项目编译固件适配 Raspberry Pi 2/3B/3B+。
- 本项目相对源码默认设置做了如下更改：

**增强项**：（**打勾项**默认**编译**入固件；**未打勾项**默认**不编译**入固件。）
  - [x] 修改架构适配 Raspberry Pi 2/3B/3B+
  - [x] 修改登录IP、网关、DNS为自动获取，关闭DHCP服务
  - [x] 添加 IPv6 支持
  - [x] 添加主题 opentomacat 并设置为默认
  - [x] 添加第三方插件 luci-app-vssr

**精简项**：
  - [x] luci-app-accesscontrol
  - [x] luci-app-adbyby-plus
  - [x] luci-app-ddns
  - [x] luci-app-ssr-plus
  - [x] luci-app-unblockmusic
  - [x] luci-app-upnp
  - [x] luci-app-vsftpd
  - [x] luci-app-wol


## 感谢 ❤️
- 源码来源： Lean 的 Openwrt 源码仓库 https://github.com/coolsnowwolf/lede
- 脚本来源： P3TERX 的 使用 GitHub Actions 云编译 OpenWrt https://github.com/P3TERX/Actions-OpenWrt