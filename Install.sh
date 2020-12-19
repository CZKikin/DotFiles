#!/bin/sh
# sudo pacman -S freetype2 pkg-config xorg xorg-server xorg-xinit  pavucontrol pulseaudio networkmanager unclutter neomutt picom discord network-manager-applet texlive-most ranger arandr feh gcc pandoc net-tools xclip wget 
# echo "Downloads finished. Downloading Suckless utilities"
# 
# cd gitRepos  || { mkdir gitRepos  ; cd gitRepos  ;}
# git clone https://github.com/CZKikin/mySuckless.git
# 
# cd mySuckless
# 
# echo "Installing Suckless utilities"
# for i in *; do
#   cd $i
#   sudo make install
#   cd ..
# done
# 
# echo "Installed. Moving repo to gitRepos"
# mv ~/DotFiles ~/gitRepos/DotFiles
# 
# rm ~/.bashrc
# cd ~/
for f in .*; do [ "$f" = ".config" ] || [ "$f" = ".git" ] || ln -s ~/gitRepos/Vimrc/$f; done

# 
# echo "Downloading fonts"
# wget https://github.com/pcaro90/hermit/raw/master/packages/full-hermit-2.0.tar.gz
# wget https://github.com/FortAwesome/Font-Awesome/raw/master/otfs/Font%20Awesome%205%20Free-Regular-400.otf
# wget https://github.com/FortAwesome/Font-Awesome/raw/master/otfs/Font%20Awesome%205%20Brands-Regular-400.otf
# wget https://github.com/FortAwesome/Font-Awesome/raw/master/otfs/Font%20Awesome%205%20Free-Solid-900.otf
# 
# tar -xvzf full-hermit-2.0.tar.gz
# 
# echo "Instllling fonts"
# mv *.otf ~/.local/share/fonts || { mkdir ~/.local/share/fonts ; mv *.otf ~/.local/share/fonts ;}
# rm -rf Hermit*; rm full-hermit*
# fc-cache -frv
# 
# echo "Minecraft is the only missing font, please install" 
