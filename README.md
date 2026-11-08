# Nyarch Linux & Niri Rice Dotfiles

<p align="center">
  <img src="https://raw.githubusercontent.com/catppuccin/catppuccin/main/assets/misc/transparent.png" height="10" />
  <br>
  <img src="https://img.shields.io/badge/OS-Nyarch%20Linux-1793d1?style=for-the-badge&logo=arch-linux&logoColor=white" />
  <img src="https://img.shields.io/badge/WM-Niri%20Wayland-FF69B4?style=for-the-badge&logo=wayland&logoColor=white" />
  <img src="https://img.shields.io/badge/Shell-Fish%20Shell-008080?style=for-the-badge&logo=gnubash&logoColor=white" />
  <img src="https://img.shields.io/badge/License-MIT-yellow?style=for-the-badge" />
  <img src="https://img.shields.io/badge/Aesthetic-Anime%20%26%20Moe-ffb6c1?style=for-the-badge" />
</p>

<p align="center">
  <i>Nyarch / Arch Linux 个人桌面环境配置 · Niri 卷轴平铺窗口管理器 · Fish Shell 与 Material 动态美化</i>
</p>

---

## 💻 硬件兼容性与参考配置规格 (System Specs & Requirements)

为便于评估本套 Dotfiles 的实际复现效果，下表列出了**作者实测验证机型**与**建议最低运行基准**：

| 项目 | 测试验证参考机型 (Tested Environment) | 最低运行参考门槛 (Minimum Requirements) |
| :--- | :--- | :--- |
| **操作系统** | Nyarch Linux x86_64 (Linux Kernel 7.x) | Arch Linux 官方版或任何 Arch-based 发行版 |
| **处理器 (CPU)** | 现代 12~16 线程处理器 (如 i7-13620H) | 4 核心 8 线程 64 位 x86_64 处理器 |
| **显卡 (GPU)** | NVIDIA RTX 5060 Laptop (支持 Prime 独显直连) | 支持 Vulkan 1.3 / OpenGL 4.5 的显卡或主流核显 |
| **显示规格** | 1080p @ 144Hz IPS 高刷新率屏 | 1080p @ 60Hz 标准显示屏 |
| **运行内存** | 16 GB DDR5 | 8 GB RAM (日常流畅运行) |

---

## 🎨 概览特性 (Highlights)

- 🪟 **窗口管理器**: [Niri](https://github.com/YaLTeR/niri) — 现代 Wayland 卷轴式平铺窗口管理器，支持丝滑弹簧动画与毛玻璃特效
- 🐚 **Shell**: [Fish Shell](https://fishshell.com/) + [Starship](https://starship.rs/) 渐变色彩 Powerline 提示符
- 💻 **终端**: Kitty / Foot (极速轻量渲染 + 材质主题)
- 🎨 **主题体系**: Matugen 动态取色 + Dank Material Shell (DMS)
- 📊 **系统监视**: Btop (萌系二次元 / 暗黑霓虹主题)
- 🎵 **音乐频谱**: CAVA
- 📂 **文件管理**: Yazi (基于 Rust 的极速终端文件管理器)
- 🚀 **应用启动器**: Fuzzel (极简轻量 Wayland 启动器)
- 📸 **截图工具**: Satty + Grim / Slurp

---

## ⚡ 快捷一键安装 (Quick Start)

在任何新安装的 Arch / Nyarch Linux 系统上，只需打开终端运行以下命令：

```bash
# 1. 克隆本仓库到用户目录
git clone https://github.com/shenchuchu91-hub/dotfiles.git ~/dotfiles

# 2. 进入目录并运行自动化安装脚本
cd ~/dotfiles
chmod +x install.sh
./install.sh
```

### 🛡️ 安全备份与无痛恢复机制：
- **无损软链接**：安装脚本默认通过建立符号链接（`ln -s`）接入配置，不硬性修改源码；
- **智能自动备份**：若检测到 `~/.config` 下已有现存同名配置，脚本会自动将其完整移动备份至 `~/.config_backup_时间戳/`，绝不直接覆盖或删除个人数据；
- **一键回滚**：如需恢复原有配置，只需删除新建的软链接，将备份目录还原回 `~/.config` 即可。

---

## ⌨️ 常用快捷键速查 (Niri Keybindings)

| 快捷键 | 功能描述 |
| :--- | :--- |
| <kbd>Super</kbd> + <kbd>Return</kbd> | 打开终端 (Kitty / Foot) |
| <kbd>Super</kbd> + <kbd>D</kbd> | 打开应用启动器 (Fuzzel) |
| <kbd>Super</kbd> + <kbd>Q</kbd> | 关闭当前窗口 |
| <kbd>Super</kbd> + <kbd>H</kbd> / <kbd>L</kbd> | 左右切换聚集窗口 |
| <kbd>Super</kbd> + <kbd>J</kbd> / <kbd>K</kbd> | 上下移动/卷轴切换 |
| <kbd>Super</kbd> + <kbd>Shift</kbd> + <kbd>H</kbd> / <kbd>L</kbd> | 左右移动窗口位置 |
| <kbd>Super</kbd> + <kbd>F</kbd> | 窗口最大化 / 全屏切换 |
| <kbd>Super</kbd> + <kbd>Print</kbd> | 截屏与标注 (Satty) |
| <kbd>Super</kbd> + <kbd>X</kbd> | 打开注销菜单 (Wlogout) |

---

## 📦 软件包清单 (Package Lists)

- [pkglist-native.txt](./pkglist-native.txt): 官方源显式安装包 (通过 `pacman -S`)
- [pkglist-aur.txt](./pkglist-aur.txt): AUR 社区源安装包 (通过 `yay` / `paru`)

---

## 🌸 鸣谢与安全守则 (Credits & Disclaimer)

- [Nyarch Linux](https://nyarchlinux.moe/)
- [Niri Window Manager](https://github.com/YaLTeR/niri)
- [Starship Cross-Shell Prompt](https://starship.rs/)
- [DankMaterialShell](https://github.com/Apostolique/DankMaterialShell)
- License: [MIT License](LICENSE)
- 安全与免责规范: [全局免责声明与通用安全规范 (Disclaimer)](https://github.com/shenchuchu91-hub/disclaimer)
