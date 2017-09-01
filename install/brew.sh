#!/bin/sh

if test ! $(which brew); then
    echo "Installing homebrew"
    ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"
fi

echo -e "\n\nInstalling homebrew packages..."
echo "=============================="

formulas=(
    # flags should pass through the the `brew list check`

    'macvim --with-override-system-vim'
    coreutils
    go
    grc
    imagemagick
    libgit2
    openssl
    node
    readline
    postgresql
    unrar
    wget
    youtube-dl
    ack
    diff-so-fancy
    dnsmasq
    fzf
    git
    'grep --with-default-names'
    highlight
    hub
    markdown
    neovim/neovim/neovim
    nginx
    reattach-to-user-namespace
    the_silver_searcher
    tmux
    tree
    z
    zsh
    ripgrep
)

taps=(
    'homebrew/bundle'
    'puma/puma'
)

casks=(
    atom
    google-chrome
    slack
    docker
    spotify
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
