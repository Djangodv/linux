#!/usr/bin/env bash

CONFDIR="${HOME}/.config/Code/User"

extensions=(
    formulahendry.code-runner
    yzane.markdown-pdf
    vscodevim.vim
    tomoki1207.pdf
    platformio.platformio-ide
    ms-vscode.cpptools
    ms-python.python
)

for extension in ${extensions[@]}; do
    code --install-extension "$extension"
done

ln -sf "${PWD}/settings.json" "${CONFDIR}/settings.json"
ln -sf "${PWD}/keybindings.json" "${CONFDIR}/keybindings.json"
