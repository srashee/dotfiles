#!/usr/bin/env bash
echo Installing Polybar
cd ~/dotfiles/polybar
./installer.sh
mkdir ~/.config/polybar
cp config launch.sh ~/.config/polybar
cp polybar-scripts/* ~/.config/polybar
cd ~/dotfiles
echo Installing vimrc
cp vim/vimrc ~/.vimrc

# Fix this
#cp xfce4/WorkTerminalRC ~/.config/Terminal/terminalrc

echo Installing rofi
sudo apt-get install rofi
mkdir ~/.config/rofi
cp rofi/config ~/.config/rofi/config

echo Installing compton
sudo apt-get install compton
mkdir ~/.config/compton
cp compton/compton.conf ~/.config/compton/

echo Installing oh-my-bash
cd ~
sh -c "$(wget https://raw.githubusercontent.com/ohmybash/oh-my-bash/master/tools/install.sh -O -)"
cd dotfiles/bash
cp bashrc ~/.bashrc
cp inputrc ~/.inputrc

echo Please install font-awesome located in dotfiles
echo bashrc might need configuring a bit
echo Completed! Enjoy

