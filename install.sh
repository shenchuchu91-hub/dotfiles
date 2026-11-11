#!/usr/bin/env bash
# ==============================================================================
#  ✨ Nyarch Linux / Niri Rice Dotfiles Installer ✨
# ==============================================================================

set -e

DOTFILES_DIR="$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)"
CONFIG_DIR="$HOME/.config"
BACKUP_DIR="$HOME/.config_backup_$(date +%Y%m%d_%H%M%S)"

# Colors
CYAN='\033[0;36m'
MAGENTA='\033[0;35m'
GREEN='\033[0;32m'
YELLOW='\033[1;33m'
RED='\033[0;31m'
NC='\033[0m' # No Color

echo -e "${MAGENTA}"
cat << 'EOF'
    /\_____/\
   /  o   o  \     ✨ Nyarch Linux / Niri Rice ✨
  ( ==  ^  == )    Dotfiles Auto Deploy Script
   )         (
  (           )
 ( (  )   (  ) )
(__(__)___(__)__)
EOF
echo -e "${CYAN}====================================================${NC}"
echo -e "${GREEN}[*] Dotfiles 路径: ${DOTFILES_DIR}${NC}"
echo -e "${GREEN}[*] 目标配置路径: ${CONFIG_DIR}${NC}"
echo -e "${CYAN}====================================================${NC}"

# 1. 确认与备份
mkdir -p "$CONFIG_DIR"

backup_and_link() {
    local src="$1"
    local dest="$2"
    local name="$(basename "$src")"

    if [ -e "$dest" ] || [ -L "$dest" ]; then
        mkdir -p "$BACKUP_DIR"
        echo -e "${YELLOW}[!] 发现已有配置 $name ，备份至 $BACKUP_DIR/$name${NC}"
        mv "$dest" "$BACKUP_DIR/"
    fi

    echo -e "${GREEN}[+] 建立软链接: $dest -> $src${NC}"
    ln -s "$src" "$dest"
}

echo -e "\n${CYAN}>>> 正在部署配置文件...${NC}"

# 部署 .config 下的全部模块
for item in "$DOTFILES_DIR/.config"/*; do
    if [ -e "$item" ]; then
        target="$CONFIG_DIR/$(basename "$item")"
        backup_and_link "$item" "$target"
    fi
done

echo -e "\n${GREEN}[✔] 所有配置文件链接完成！${NC}"

# 2. 询问是否安装常用依赖包
echo -e "\n${CYAN}>>> 软件依赖安装检查${NC}"
if command -v pacman >/dev/null 2>&1; then
    read -p "是否需要自动安装核心软件包 (niri, fish, starship, fastfetch, btop, yazi 等)? [y/N] " -n 1 -r
    echo
    if [[ $REPLY =~ ^[Yy]$ ]]; then
        PKGS=(
            niri
            fish
            starship
            fastfetch
            kitty
            foot
            btop
            cava
            yazi
            fuzzel
            satty
            matugen
            fcitx5
            fcitx5-chinese-addons
            ttf-fira-code
            ttf-nerd-fonts-symbols
            noto-fonts-cjk
            noto-fonts-emoji
            eza
            bat
            zoxide
            sl
            lolcat
        )
        echo -e "${CYAN}[*] 正在通过 pacman 安装基础组件...${NC}"
        sudo pacman -S --needed --noconfirm "${PKGS[@]}" || {
            echo -e "${YELLOW}[!] 正在逐项容错检查安装...${NC}"
            for pkg in "${PKGS[@]}"; do
                sudo pacman -S --needed --noconfirm "$pkg" 2>/dev/null || true
            done
        }

        if [ -f "$DOTFILES_DIR/pkglist-aur.txt" ] && command -v yay >/dev/null 2>&1; then
            echo -e "${CYAN}[*] 检测到 yay，准备安装 AUR 专有组件...${NC}"
            echo -e "${YELLOW}[!] AUR 软件包由社区维护、默认未经官方审查。安装前请自行检查 PKGBUILD，确认脚本内容安全后再继续。${NC}"
            yay -S --needed - < "$DOTFILES_DIR/pkglist-aur.txt" || true
        elif [ -f "$DOTFILES_DIR/pkglist-aur.txt" ] && command -v paru >/dev/null 2>&1; then
            echo -e "${CYAN}[*] 检测到 paru，准备安装 AUR 专有组件...${NC}"
            echo -e "${YELLOW}[!] AUR 软件包由社区维护、默认未经官方审查。安装前请自行检查 PKGBUILD，确认脚本内容安全后再继续。${NC}"
            paru -S --needed - < "$DOTFILES_DIR/pkglist-aur.txt" || true
        fi
    fi
fi

# 3. 询问是否将 fish 设置为默认 shell
if command -v fish >/dev/null 2>&1; then
    if [ "$SHELL" != "$(which fish)" ]; then
        read -p "是否将 Fish 设置为当前用户的默认 Shell? [y/N] " -n 1 -r
        echo
        if [[ $REPLY =~ ^[Yy]$ ]]; then
            chsh -s "$(which fish)"
            echo -e "${GREEN}[✔] 默认 Shell 已设为 Fish！${NC}"
        fi
    fi
fi

echo -e "\n${MAGENTA}====================================================${NC}"
echo -e "${GREEN}🎉 恭喜！Nyarch / Niri 桌面环境配置已成功部署完毕！${NC}"
echo -e "${CYAN}💡 提示：注销并重新登录，选择 Niri 即可开启丝滑二次元平铺桌面体验！${NC}"
echo -e "${MAGENTA}====================================================${NC}"
