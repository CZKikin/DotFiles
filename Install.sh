#!/bin/sh
cd git_repos  || { mkdir git_repos  ; cd git_repos  ;}
mkdir suckless
cd suckless
git clone https://github.com/CZKikin/Dwm.git
git clone https://github.com/CZKikin/dwmblocks.git
git clone https://github.com/CZKikin/St.git
git clone https://github.com/CZKikin/slock.git
git clone https://git.suckless.org/dmenu

sudo pacman -S freetype2 pkg-config xorg xorg-server xorg-xinit  pavucontrol pulseaudio networkmanager unclutter neomutt picom discord network-manager-applet texlive-most ranger arandr feh gcc pandoc net-tools xclip wget 

for i in *; do
  cd $i
  sudo make install
  cd ..
done


echo "Downloads finished... "

mv ~/VimRc ~/git_repos/VimRc

ln -s ~/git_repos/VimRc/.* ~/

wget https://github.com/pcaro90/hermit/raw/master/packages/full-hermit-2.0.tar.gz
wget https://github.com/FortAwesome/Font-Awesome/raw/master/otfs/Font%20Awesome%205%20Free-Regular-400.otf
wget https://github.com/FortAwesome/Font-Awesome/raw/master/otfs/Font%20Awesome%205%20Brands-Regular-400.otf
wget https://github.com/FortAwesome/Font-Awesome/raw/master/otfs/Font%20Awesome%205%20Free-Solid-900.otf

tar -xvzf full-hermit-2.0.tar.gz

mv *.otf ~/.fonts || { mkdir ~/.fonts ; mv *.otf ~/.fonts ;}
rm -rf Hermit*; rm full-hermit*
fc-cache -frv
xrdb .Xresources
