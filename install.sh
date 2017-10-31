#!/usr/bin/env sh

echo "Installing dotfiles"


OS=`uname`

if [ $OS == "Darwin" -a -x `which brew` ]; then
  cp completions/firebase.completion /usr/local/etc/bash_completion.d
else 
  cp completions/firebase.completion /etc/bash_completion.d/
fi


if ! zsh_loc="$(type -p "zsh")" || [ -z "$zsh_loc" ]; then
    echo "zsh not found. Please install and then re-run installation scripts"
    exit 1
elif ! [[ $SHELL =~ .*zsh.* ]]; then
    echo "Configuring zsh as default shell"
    chsh -s $(which zsh)
fi

if [ ! -d ~/.zplug ]; then    
    echo "installing zplug, a plugin manager for zsh - http://zplug.sh"
    git clone https://github.com/zplug/zplug ~/.zplug
fi

source install/link.sh
source install/git.sh

if [ "$(uname)" == "Darwin" ]; then
    echo "\n\nRunning on OSX"
    source install/brew.sh
    source install/macos.sh

fi


echo "Done. Reload your terminal."

