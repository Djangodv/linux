#!/usr/bin/env bash
#This script has to be run from the root folder of this directory (./Github/linux)

#Update system
sudo apt update && sudo apt upgrade -y

#Add user to sudoers file
sudo echo "user   ALL=(ALL:ALL) ALL" >> /etc/sudoers

#Install packages
packages=(
	vim git snapd
)

for package in ${packages[@]}; do
	sudo apt install ${package} -y
done

#Install VSCode
sudo snap install core
sudo snap install --classic code

#Install latest Firefox version
sudo snap install firefox
sudo apt remove firefox-esr

#Install Spotify
sudo snap install spotify

#Cleanup
sudo apt autoremove -y

#Create symlink for .background
ln -sf "${PWD}/.backgrounds" "${HOME}/Pictures/.backgrounds"

#Extract theme/icon files in home directory
tar -xf "${PWD}/.theme/.themes.tar.xz" -C "${HOME}"
tar -xf "${PWD}/.theme/.icons.tar.xz" -C "${HOME}"

#Setup desktop environment

#Dconf settings to change:
#terminal:
#icons:
#theme:
#dark mode:
#applications:

#Run the SSH script
./ssh.sh

