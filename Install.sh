#!/bin/sh
cd git_repos  || { mkdir git_repos  ; cd git_repos  ;}
mkdir suckless
cd suckless
git clone https://github.com/CZKikin/Dwm.git
git clone https://github.com/CZKikin/dwmblocks.git
git clone https://github.com/CZKikin/St.git
git clone https://github.com/CZKikin/slock.git
git clone https://git.suckless.org/dmenu

for i in *; do
  cd $f
  sudo make install
  cd ..
done


sudo pacman -S freetype2 pkg-config xorg xorg-server xorg-xinit  pavucontrol pulseaudio networkmanager unclutter neomutt picom discord network-manager-applet texlive-most ranger arandr feh gcc pandoc net-tools xclip 

echo You should install fonts that are not included. Fonts needed are: Symbola, Minecraft, Hermit
echo "Downloads finished... "

mv ~/VimRc ~/git_repos/VimRc
