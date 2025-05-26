#!/usr/bin/env bash

VSCodeConfigDir = 

extensions=(
    formulahendry.code-runner
    yzane.markdown-pdf
    vscodevim.vim
    tomoki1207.pdf
    platformio.platformio-ide
)

for extension in ${extensions[@]}; do
    code --install-extension "$extension"
done

