#!/usr/bin/env bash

# Prerequisites for i3-gaps
sudo apt install libxcb1-dev libxcb-keysyms1-dev libpango1.0-dev libxcb-util0-dev libxcb-icccm4-dev libyajl-dev libstartup-notification0-dev libxcb-randr0-dev libev-dev libxcb-cursor-dev libxcb-xinerama0-dev libxcb-xkb-dev libxkbcommon-dev libxkbcommon-x11-dev xutils-dev libxcb-shape0-dev autoconf

# Need to manually install Airblader's xcb-util-xrm
cd /tmp
git clone https://github.com/Airblader/xcb-util-xrm
cd xcb-util-xrm
git submodule update --init
./autogen.sh --prefix=/usr
make
sudo make install

# Let's install i3-gaps now
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

# move to ~/.i3/config directory
# do below command after logging into i3 so commented it out
# cp /etc/i3/config ~/.i3/config
