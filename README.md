<p align="center">
  <img src="./assets/banner.jpg" width="100%" alt="" />
</p>

<p align="center"><sub>雨还在下</sub></p>

# 个人配置

这台 Arch 上的 niri、fish、starship、kitty。新机器上克隆下来跑脚本。脚本只做软链接，看见已有配置会先挪走。

## 里面有什么

- 窗口：[niri](https://github.com/YaLTeR/niri)
- Shell：[fish](https://fishshell.com/) + [starship](https://starship.rs/)
- 终端：kitty / foot
- 颜色：matugen，外壳是 [Dank Material Shell](https://github.com/Apostolique/DankMaterialShell)
- 监控：btop
- 频谱：cava
- 文件：yazi
- 启动器：fuzzel
- 截图：satty + grim / slurp

## 安装

Arch 或 Nyarch 上：

```bash
git clone https://github.com/shenchuchu91-hub/dotfiles.git ~/dotfiles
cd ~/dotfiles
chmod +x install.sh
./install.sh
```

脚本做三件事：

1. `~/.config` 里同名目录挪到 `~/.config_backup_时间戳/`，不直接删。
2. 用 `ln -s` 把仓库里的配置链过去。
3. 问你要不要用 `pacman` / `yay` 把缺的包装上。

要退回去：删掉新建的链接，把备份目录挪回 `~/.config`。

GTK 书签 `.config/gtk-3.0/bookmarks` 不认 `$HOME`。仓库里写的是 `/home/USER`。装之前或装之后把 `USER` 换成你的用户名，不然文件管理器的书签是空的。

## 键

| 键 | 做什么 |
| --- | --- |
| Super + Return | 终端 |
| Super + D | Fuzzel |
| Super + Q | 关窗口 |
| Super + H / L | 左右切换 |
| Super + J / K | 卷轴上下 |
| Super + Shift + H / L | 挪窗口 |
| Super + F | 全屏 |
| Super + Print | 截图 |
| Super + X | 注销菜单 |

## 包列表

- [pkglist-native.txt](./pkglist-native.txt)：官方源，`pacman -S`
- [pkglist-aur.txt](./pkglist-aur.txt)：AUR，`yay` 或 `paru`

## 这些不是我从零写的

窗口规则和一部分安装脚本整理自：

- [SHORiN-KiWATA](https://github.com/SHORiN-KiWATA)：[shorin-arch-setup](https://github.com/SHORiN-KiWATA/shorin-arch-setup)（AGPL-3.0）、[shorin-niri](https://github.com/SHORiN-KiWATA/shorin-niri)、[shorin-dms-hyprniri](https://github.com/SHORiN-KiWATA/shorin-dms-hyprniri)
- [trygveaa/kitty-kitten-search](https://github.com/trygveaa/kitty-kitten-search)（`.config/kitty/search.py`，GPL-3.0）
- [vinceliuice/Colloid-kde](https://github.com/vinceliuice/Colloid-kde)（Kvantum 主题，GPL-3.0）

[MIT](LICENSE) 只覆盖这个仓库里我自己写的部分。别人的文件还是原来的许可证，见 [THIRD_PARTY_NOTICES.md](./THIRD_PARTY_NOTICES.md)。

`shorin-niri` 和 `shorin-dms-hyprniri` 上游还没写许可证。先留着并注明出处。要撤就说。

另外用到的上游：[Nyarch](https://nyarchlinux.moe/)、[niri](https://github.com/YaLTeR/niri)、[starship](https://starship.rs/)。

<p align="center"><sub>雨还在下</sub></p>
