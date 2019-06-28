#!/usr/bin/env bash
cd ~/dotfiles/polybar
./installer.sh
mkdir ~/.config/polybar
cp config launch.sh ~/.config/polybar
cp polybar-scripts/* ~/.config/polybar
