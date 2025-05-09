#!/usr/bin/env bash
#This script has to be run from the home directory

#Update system
sudo apt update && sudo apt upgrade -y

#Install packages
packages=(
	vim git
)

for package in ${packages[@]}; do
	sudo apt install ${package} -y
done

#Add user to sudoers file
sudo echo "user   ALL=(ALL:ALL) ALL" >> /etc/sudoers

#Setup dotfiles

configfiledir="${HOME}/Github/dotfiles"

files=(.vimrc)

for file in ${files[@]}; do
	ln -sf "${configfiledir}/${file}" "${HOME}/${file}"
done

#Setup git

ssh-keygen -q -t ed25519 -f /home/user/.ssh/id_ed25519 -N "" -C "dd.manders@protonmail.com"
ssh-keygen -q -t ed25519 -f /home/user/.ssh/id_ed25519_school -N "" -C "django.manders@student.hu.nl"

ln -sf "${configfiledir}/config" "${HOME}/.ssh/config"

