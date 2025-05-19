#!/usr/bin/env bash
#This script has to be run from the home directory

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

#Setup desktop environment
#ln -sf "${PWD}/.themes" "${HOME}/.themes"
#ln -sf "${PWD}/.icons" "${HOME}/.icons"
ln -sf "${PWD}/.backgrounds" "${HOME}/.backgrounds"
tar -xf "${PWD}/.theme/.themes.tar.xz" -C "${HOME}"
tar -xf "${PWD}/.theme/.icons.tar.xz" -C "${HOME}"


# Run the SSH script
./ssh.sh

