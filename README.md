# ✨ Nyarch Linux & Niri Rice Dotfiles ✨

<p align="center">
  <img src="https://raw.githubusercontent.com/catppuccin/catppuccin/main/assets/misc/transparent.png" height="10" />
  <br>
  <img src="https://img.shields.io/badge/OS-Nyarch%20Linux-1793d1?style=for-the-badge&logo=arch-linux&logoColor=white" />
  <img src="https://img.shields.io/badge/WM-Niri%20Wayland-FF69B4?style=for-the-badge&logo=wayland&logoColor=white" />
  <img src="https://img.shields.io/badge/Shell-Fish%20Shell-008080?style=for-the-badge&logo=gnubash&logoColor=white" />
  <img src="https://img.shields.io/badge/Theme-Dank%20Material%20You-8A2BE2?style=for-the-badge" />
  <img src="https://img.shields.io/badge/Anime-Nyarch%20Aesthetic-ffb6c1?style=for-the-badge&logo=safari&logoColor=white" />
</p>

<p align="center">
  <i>🌸 专为二次元萌系、极客效率打造的 Arch Linux + Niri 丝滑无限横向滚动平铺桌面环境配置 🌸</i>
</p>

---

## 🎨 概览特性 (Highlights)

- 🪟 **窗口管理器**: [Niri](https://github.com/YaLTeR/niri) — 现代 Wayland 卷轴式平铺窗口管理器，支持丝滑动画与模糊特效
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

> 脚本会自动检测现有配置并建立备份至 `~/.config_backup_*`，安全无痛迁移！

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

## 🌸 鸣谢 (Credits)

- [Nyarch Linux](https://nyarchlinux.moe/)
- [Niri Window Manager](https://github.com/YaLTeR/niri)
- [Starship Cross-Shell Prompt](https://starship.rs/)
- [DankMaterialShell](https://github.com/Apostolique/DankMaterialShell)
