#!/bin/bash
# This script is used to install the necessary packages for the project
# Check if current user can exec sudo commands
if id -nG "$USER" | grep -qw "sudo"; then
    echo "You can exec sudo commands"
else
    echo "You can't exec sudo commands"
    echo "Please, add your user to the sudo group"
    exit 1
fi

dependencies1="awesome build-essential cmake make gcc lua5.2 liblua5.3-dev lua-busted lua-discount lua-ldoc lua-lgi lua5.3 asciidoctor debhelper-compat imagemagick libcairo2-dev libdbus-1-dev libgdk-pixbuf2.0-dev libglib2.0-dev libpango1.0-dev libstartup-notification0-dev libx11-xcb-dev libxcb-cursor-dev libxcb-icccm4-dev libxcb-keysyms1-dev libxcb-randr0-dev libxcb-shape0-dev libxcb-util0-dev libxcb-xinerama0-dev libxcb-xkb-dev libxcb-xrm-dev libxcb-xtest0-dev libxdg-basedir-dev libxkbcommon-dev libxkbcommon-x11-dev x11proto-core-dev build-essential dbus-x11 gir1.2-gtk-3.0 libxcb-icccm4-dev libxcb-util0-dev libxcb1-dev x11-apps x11-utils x11-xserver-utils xfonts-base xterm xvfb libxcb-xfixes0-dev"

dependencies2="kitty brightnessctl dunst rofi jq policykit-1-gnome playerctl mpd ncmpcpp mpc picom xdotool ueberzug libwebp-dev webp-pixbuf-loader zsh zsh-autosuggestions zsh-syntax-highlighting thunar thunar-volman thunar-archive-plugin gvfs gvfs-backends engrampa suckless-tools xdo redshift xautolock fzf ytfzf yt-dlp gawk tumbler gpick xdg-utils python-is-python3 python3-gi gir1.2-nm-1.0 duf libglib2.0-bin btop ncdu bat exa wmctrl acpid xclip scrot mpdris2 libplayerctl-dev gir1.2-playerctl-2.0 lxappearance bc wget curl"

# Update the system
sudo apt-get update
sudo apt-get upgrade -y

# Install the necessary packages
cp -r .config/* ~/.config/
cp -r local/* ~/.local/
cp -r home/* ~/

# Install the necessary packages
sudo apt-get update
sudo apt-get upgrade -y
sudo apt-get install -y $dependencies1

sudo dpkg -i './app suport/awesome-4.3.0.0~git1611-gaa8c7c6e-Linux.deb'
sudo cp './app suport/awesome.desktop' /usr/share/xsessions/
sudo chmod +x /usr/share/xsessions/awesome.desktop

sudo apt-get install -y $dependencies2

sudo wget https://github.com/ohmyzsh/ohmyzsh/raw/refs/heads/master/plugins/sudo/sudo.plugin.zsh -O /usr/share/zsh-sudo/sudo.plugin.zsh

unzip local/share/fonts/fonts.zip -d ~/.local/share/fonts
unzip local/share/fonts/Hack.zip -d ~/.local/share/fonts
fc-cache -fv

sudo wget https://github.com/erebe/greenclip/releases/download/v4.2/greenclip -O /usr/bin/greenclip
sudo chmod +x /usr/bin/greenclip

git clone https://github.com/firecat53/networkmanager-dmenu.git
cd networkmanager-dmenu
chmod +x networkmanager_dmenu.desktop
sudo mv networkmanager_dmenu.desktop /usr/share/applications/
chmod +x networkmanager_dmenu
sudo mv networkmanager_dmenu /usr/bin/