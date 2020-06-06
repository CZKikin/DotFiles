#!/bin/bash
git clone https://github.com/CZKikin/Dwm.git
git clone https://github.com/CZKikin/St.git
git clone https://git.suckless.org/dmenu
git clone https://git.suckless.org/slock

sudo pacman -S freetype2 pkg-config xorg xorg-server xorg-xinit pavucontrol pulseaudio networkmanager unclutter neomutt picom discord network-manager-applet texlive-most ranger arandr feh gcc

shopt -s dotglob
mv ~/VimRc/* ~/

cd Dwm
sudo make install

cd ../St
sudo make install

cd ../Dmenu
sudo make install

cd ../Slock
sudo make install

echo "all"
