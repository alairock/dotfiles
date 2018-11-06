#!/bin/sh
if test ! $(which brew); then
    echo "Installing homebrew"
    ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"
fi

echo "\n\nInstalling homebrew packages..."
echo "=============================="

formulas=(
    # flags should pass through the the `brew list check`

    git
    neovim/neovim/neovim
    reattach-to-user-namespace
    the_silver_searcher
    tmux
    zsh
    jrnl
)

taps=(
)

casks=(
)

for tap in "${taps[@]}"; do
    brew tap $tap
done

for formula in "${formulas[@]}"; do
    if brew list "$formula" > /dev/null 2>&1; then
        echo "$formula already installed... skipping."
    else
        brew install $formula
    fi
done

for cask in "${casks[@]}"; do
    brew install cask $cask
done
