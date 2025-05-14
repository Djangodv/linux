#!/usr/bin/env bash
#This script has to be run from the home directory

#Update system
sudo apt update && sudo apt upgrade -y

#Install packages
packages=(
	vim git snapd
)

for package in ${packages[@]}; do
	sudo apt install ${package} -y
done

#Add user to sudoers file
sudo echo "user   ALL=(ALL:ALL) ALL" >> /etc/sudoers

#Setup desktop environment

#Setup dotfiles

configfiledir="${HOME}/Github/dotfiles"

files=(.vimrc)

for file in ${files[@]}; do
	ln -sf "${configfiledir}/${file}" "${HOME}/${file}"
done

