#!/bin/sh
echo "Downloading fonts"
wget https://github.com/pcaro90/hermit/raw/master/packages/full-hermit-2.0.tar.gz
wget https://github.com/FortAwesome/Font-Awesome/raw/master/otfs/Font%20Awesome%205%20Free-Regular-400.otf
wget https://github.com/FortAwesome/Font-Awesome/raw/master/otfs/Font%20Awesome%205%20Brands-Regular-400.otf
wget https://github.com/FortAwesome/Font-Awesome/raw/master/otfs/Font%20Awesome%205%20Free-Solid-900.otf

tar -xvzf full-hermit-2.0.tar.gz

echo "Instllling fonts"
mv *.otf ~/.local/share/fonts || { mkdir ~/.local/share/fonts ; mv *.otf ~/.local/share/fonts ;}
rm -rf Hermit*; rm full-hermit*
fc-cache -frv

echo "Minecraft is the only missing font, please install" 
echo "Install your video drivers like xf86-video-amdgpu :)"
