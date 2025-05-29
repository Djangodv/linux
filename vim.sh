#!/usr/bin/env bash

ln -sf "${PWD}/.vimrc" "${HOME}/.vimrc"

curl -fLo ~/.vim/autoload/plug.vim --create-dirs \
    https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim

vim +PlugInstall +qall