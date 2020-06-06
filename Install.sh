#!/bin/bash
git clone https://github.com/CZKikin/Dwm.git
git clone https://github.com/CZKikin/St.git
sudo pacman -S freetype2 pkg-config xorg xorg-server xorg-xinit pavucontrol pulseaudio networkmanager unclutter neomutt picom discord network-manager-applet texlive-most ranger arandr feh gcc

sudo shopt -s dotglob
sudo mv ~/VimRc/* ~/

cd Dwm
sudo make install

cd ../St
sudo make install

echo "all"
