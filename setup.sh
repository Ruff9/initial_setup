#!/bin/bash

sudo apt update
sudo apt upgrade
sudo apt install curl wget git libfuse2t64 zsh

# vanilla gnome
sudo apt install pulseaudio
sudo apt install vanilla-gnome-desktop

# nextcloud desktop
sudo apt install nextcloud-desktop

# ohmyzsh
chsh -s $(which zsh)
sh -c "$(curl -fsSL https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"

# sublime text
wget -qO - https://download.sublimetext.com/sublimehq-pub.gpg | sudo tee /etc/apt/keyrings/sublimehq-pub.asc > /dev/null
echo -e 'Types: deb\nURIs: https://download.sublimetext.com/\nSuites: apt/stable/\nSigned-By: /etc/apt/keyrings/sublimehq-pub.asc' | sudo tee /etc/apt/sources.list.d/sublime-text.sources

sudo apt-get update
sudo apt-get install sublime-text

sudo apt install terminator audacious

# reboot after script
# select Gnome in the login screen
# connect to nextcloud and sync files