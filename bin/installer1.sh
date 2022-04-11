#!/usr/bin/env bash
echo Welcome to the Installer future-Saad
echo Lets do this
echo Install vim xfce4-terminal git

#https://github.com/srashee/dotfiles.git

echo Begin installing i3-gaps dependencies
sudo apt install libxcb1-dev libxcb-keysyms1-dev libpango1.0-dev libxcb-util0-dev libxcb-icccm4-dev libyajl-dev libstartup-notification0-dev libxcb-randr0-dev libev-dev libxcb-cursor-dev libxcb-xinerama0-dev libxcb-xkb-dev libxkbcommon-dev libxkbcommon-x11-dev xutils-dev libxcb-shape0-dev autoconf

echo Installing xcb-util-xrm
cd /tmp
git clone https://github.com/Airblader/xcb-util-xrm
cd xcb-util-xrm
git submodule update --init
./autogen.sh --prefix=/usr
make
sudo make install

echo Installing i3-gaps
mkdir ~/i3-gaps_shiz #change the name if you must
cd ~/i3-gaps_shiz
git clone https://www.github.com/Airblader/i3 i3-gaps
cd i3-gaps
autoreconf --force --install
mkdir build
cd build
../configure --prefix=/usr --sysconfdir=/etc
make
sudo make install

echo Installing config file
cd ~
git clone https://github.com/srashee/dotfiles.git
mkdir ~/.i3
cp ~/dotfiles/i3/config ~/.i3/config
cp ~/dotfiles/monitor/monitor.sh ~/.i3/config


echo Restart - Select i3 from login
echo Run part 2
