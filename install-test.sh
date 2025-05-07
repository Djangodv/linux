#!/usr/bin/env bash

sudo apt update && sudo apt upgrade -y

packages=(
	vim
)

for package in ${packages[@]}; do
	sudo apt install ${package} -y
done
