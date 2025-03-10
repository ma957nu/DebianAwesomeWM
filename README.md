# DebianAwesomeWM
<div align="center">
     <h1>Awesome Dotfiles</h1>
 </div>

<div align=center>

<a href="https://awesomewm.org/"><img alt="AwesomeWM Logo" height="150" src="https://upload.wikimedia.org/wikipedia/commons/0/07/Awesome_logo.svg"></a>

<div align="center">
    <img src ="https://img.shields.io/badge/Awesome-WM-blue?style=for-the-badge&logo=lua&logoColor=red&color=red"/>
    <img src ="https://img.shields.io/badge/Debian-12-green?style=for-the-badge&logo=Debian&logoColor=red&color=blue"/>
</div>

</div>

## 🔥 Information


![ss](./ss/segunda.png)

|    Distro    |                            [Debian 12](https://debian.org/)                            |
| :----------: | :------------------------------------------------------------------------------------: |
|      WM      |                   [AwesomeWM](https://github.com/awesomeWM/awesome)                    |
|   Terminal   |                  [Kitty](https://github.com/kovidgoyal/kitty)                          |
|    Shell     |                    [Zsh PowerLevel10K](https://github.com/romkatvpowerlevel10k)        |                   
|   Launcher   |                       [Rofi](https://github.com/davatorium/rofi)                       |
|  Clipboard   |                  [Rofi-Greenclip](https://github.com/erebe/greenclip)                  |
|    Neovim    |     [Neovim](https://github.com/neovim/neovim)-[Astronvim](https://astronvim.com/)     |
|  Compositor  |                                         Picom                                          |
| Music/Player |                                      MPD-Ncmpcpp                                       |
| File Manager |                                         Thunar                                         |

## 🖼️ Gallery

![ss](./ss/tercera.png)

![ss](./ss/cuarta.png)

![ss](./ss/Primera.png)



## 💣 Setup Installation

1.- <b>First clone the repository</b>

2.- <b>Copy config :</b>

```sh
cd DebianAwesomeWM
cp -r config/* ~/.config/
cp -r local/* ~/.local/
cp -r home/* ~/
```

3.- <b>Install Dependencies</b>

- **Read Notice**

This dotfiles use awesome.git, so for Debian 12/Ubuntu you must read this, For Other distro like Archlinux and other no problem to install awesome.git

Dependencies :

```sh
awesome build-essential cmake make gcc lua5.2 liblua5.3-dev lua-busted lua-discount lua-ldoc lua-lgi lua5.3 asciidoctor debhelper-compat imagemagick libcairo2-dev libdbus-1-dev libgdk-pixbuf2.0-dev libglib2.0-dev libpango1.0-dev libstartup-notification0-dev libx11-xcb-dev libxcb-cursor-dev libxcb-icccm4-dev libxcb-keysyms1-dev libxcb-randr0-dev libxcb-shape0-dev libxcb-util0-dev libxcb-xinerama0-dev libxcb-xkb-dev libxcb-xrm-dev libxcb-xtest0-dev libxdg-basedir-dev libxkbcommon-dev libxkbcommon-x11-dev x11proto-core-dev build-essential dbus-x11 gir1.2-gtk-3.0 libxcb-icccm4-dev libxcb-util0-dev libxcb1-dev x11-apps x11-utils x11-xserver-utils xfonts-base xterm xvfb libxcb-xfixes0-dev
```

- **After install dependencies, install awesome.git from folder app support, it`s my build**

```sh
cd 
sudo dpkg -i awesome-4.3.0.0~git1611-gaa8c7c6e-Linux.deb
sudo cp awesome.desktop /usr/share/xsessions/
sudo chmod +x /usr/share/xsessions/awesome.desktop
```

- **or build from [awesome.git](https://github.com/awesomeWM/awesome)**

**I`m use this for build:**

```sh
git clone https://github.com/awesomewm/awesome
cd awesome
CMAKE_ARGS="-DLUA_EXECUTABLE=/usr/bin/lua5.3 -DLUA_LIBRARY=/usr/lib/x86_64-linux-gnu/liblua5.3.so -DLUA_INCLUDE_DIR=/usr/include/lua5.3" make package
cd build
sudo apt install ./*.deb
```

5.- **Other dependecies only works for Debian 12/Ubuntu and based distro, for other distro you can search same packages**

```sh
kitty brightnessctl dunst rofi jq policykit-1-gnome playerctl mpd ncmpcpp mpc picom xdotool ueberzug libwebp-dev webp-pixbuf-loader zsh zsh-autosuggestions zsh-syntax-highlighting thunar thunar-volman thunar-archive-plugin gvfs gvfs-backends engrampa suckless-tools xdo redshift xautolock fzf ytfzf yt-dlp gawk tumbler gpick xdg-utils python-is-python3 python3-gi gir1.2-nm-1.0 duf libglib2.0-bin btop ncdu bat exa wmctrl acpid xclip scrot mpdris2 libplayerctl-dev gir1.2-playerctl-2.0 lxappearance bc
```

---

- **For zsh
In the .zshrc file you have to change line 47 and put the home of your user

[Zsh-plugin-sudo](https://github.com/ohmyzsh/ohmyzsh/blob/master/plugins/sudo/sudo.plugin.zsh)

Copy the content from this GitHub and paste it into /usr/share/zsh-sudo/sudo.plugin.zsh

**If you don't have the zsh-sudo directory, create it**


- **For Neovim**

Because Neovim in Debian 12 to old, you can install neovim from folder app support or build from [Neovim](https://github.com/neovim/neovim)

- **For Fonts**

Extract fonts.zip and hack.zip in ~/.local/share/fonts than run fc-cache -fv in terminal

```sh
unzip fonts.zip -d ~/.local/share/fonts
unzip Hack.zip -d ~/.local/share/fonts
fc-cache -fv
```

---

**For Debian/Ubuntu you can build for this :**

- [I3lock-Color](https://github.com/Raymo111/i3lock-color)

- [Rofi-Greenclip](https://github.com/erebe/greenclip)

```sh
wget https://github.com/erebe/greenclip/releases/download/v4.2/greenclip
sudo mv greenclip /usr/bin/
sudo chmod +x /usr/bin/greenclip
```

- [Networkmanager_dmenu](https://github.com/firecat53/networkmanager-dmenu)

```sh
git clone https://github.com/firecat53/networkmanager-dmenu.git
cd networkmanager-dmenu
chmod +x networkmanager_dmenu.desktop
sudo mv networkmanager_dmenu.desktop /usr/share/applications/
chmod +x networkmanager_dmenu
sudo mv networkmanager_dmenu /usr/bin/
```

**Themes and icons :**

- [Material-GTK-Themes](https://github.com/Fausto-Korpsvart/Material-GTK-Themes)

- [TokyoNight](https://github.com/ljmill/tokyo-night-icons)

- [Cutefish](https://github.com/cutefishos/icons) or you can take from folder app support and extract and move folder Crule to /usr/share/icons/

<table align="center">
   <tr>
      <th align="center">
      </th>
   </tr>
   <tr>
      <td align="center">

    💻 Dotfiles Configured at 1360x768 with 96 DPI on 1 monitor

   </tr>
   </table>

## Credits

[adi1090x](https://github.com/adi1090x/widgets), [rxyhn](https://github.com/rxyhn/yoru), [saimoomedits](https://github.com/saimoomedits/dotfiles), [AlphaTechnolog](https://github.com/AlphaTechnolog), [Chick2D](https://github.com/Chick2D/neofetch-themes), [bakkeby](https://github.com/bakkeby/dmenu-flexipatch), [hidayry](https://github.com/hidayry)
