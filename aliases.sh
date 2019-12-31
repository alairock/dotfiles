#Other
# editor aliases
alias neo='nvim'
alias vim="neo"
alias vi="neo"

# movement
alias ll='ls -al'
alias cc='cd ~/dev'
alias c.='cd ~/.dotfiles/'
alias k=kubectl

# docker stuff
alias dc="docker-compose"

# zsh
alias ae='neo ~/.zshrc'
alias ar='source ~/.zshrc'

# git stuff
alias gs='git status -s'
alias gst='git stash'
alias gcm='git ci -m'
alias gcim='git ci -m'
alias gci='git ci'
alias gco='git co'
alias ga='git add -A'
alias gl='git l'
alias co='git co'
alias gf='git fetch'
alias gfch='git fetch'
alias gd='git diff'
alias gb='git b'
alias gbd='git b -D -w'
alias gdc='git diff --cached -w'
alias gds='git diff --staged -w'
alias gpub='grb publish'
alias gtr='grb track'
alias gpl='git pull --rebase'
alias gplr='git pull --rebase'
alias gps='git push -u origin $(git rev-parse --abbrev-ref HEAD)'
alias gnb='git nb' # new branch aka checkout -b
alias grs='git reset'
alias grsh='git reset --hard'
alias gcln='git clean'
alias gclndf='git clean -df'
alias gclndfx='git clean -dfx'
alias gsm='git submodule'
alias gsmi='git submodule init'
alias gsmu='git submodule update'
alias gt='git t'
alias gbg='git bisect good'
alias gbb='git bisect bad'
alias gpr='hub pull-request'
