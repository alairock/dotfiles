#!/usr/bin/env bash

echo "Installing dotfiles"

if ! command_exists zsh; then
    echo "zsh not found. Please install and then re-run installation scripts"
    exit 1
elif ! [[ $SHELL =~ .*zsh.* ]]; then
    echo "Configuring zsh as default shell"
    chsh -s $(which zsh)
fi

if ! command_exists zplug; then
    echo "installing zplug, a plugin manager for zsh - http://zplug.sh"
    git clone https://github.com/zplug/zplug ~/.zplug
fi

source install/link.sh
source install/git.sh

# only perform macOS-specific install
if [ "$(uname)" == "Darwin" ]; then
    echo -e "\n\nRunning on OSX"

    source install/brew.sh

    source install/osx.sh

fi




echo "Done. Reload your terminal."

