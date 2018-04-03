#Other
alias dbtunnel='ssh -p 1022 -L localhost:51515:prod2.db.canopy.ninja:5432 -N ubuntu@ssh-tunnel.canopy.ninja'
alias rmtunnel='kubectl port-forward rabbitmq-0 15672:15672 -n rabbit --context production'
alias rtunnel='kubectl port-forward rabbitmq-0 5672:5672 -n rabbit --context production'

# editor aliases
alias neo='nvim'
alias vim="neo"
alias vi="neo"

# movement
alias ll='ls -al'
alias cc='cd ~/dev/CanopyCode'
alias ca='cd ~/dev/CanopyCode/canopy'
alias ddg='cd ~/dev/CanopyCode/doc-doc-goose'
alias crm='cd ~/dev/CanopyCode/crm'
alias sheltr='cd ~/dev/CanopyCode/sheltr'
alias c.='cd ~/.dotfiles/'
alias c=gcloud
alias k=kubectl

# docker stuff
alias phpunit='docker exec -ti docdocgoose_workflow_1 ./bin/phpunit-debug --stop-on-error'
alias dc="docker-compose"

# Python aliases
alias pyd='python -s ~/.dotfiles/pdb/pydbgp -d localhost:9000 run.py'

# zsh 
alias ae='neo ~/.zshrc'
alias ar='source ~/.zshrc'

# git stuff
alias slackmojify="mogrify -resize 128x128 -unsharp 2x1.4+0.5+0 -quality 100 -verbose"
alias gs='git status -s'
alias gstsh='git stash'
alias gst='git stash'
alias gsp='git stash pop'
alias gsa='git stash apply'
alias gsh='git show'
alias gshw='git show'
alias gshow='git show'
alias gi='vim .gitignore'
alias gcm='git ci -m'
alias gcim='git ci -m'
alias gci='git ci'
alias gco='git co'
alias gcp='git cp'
alias ga='git add -A'
alias gap='git add -p'
alias guns='git unstage'
alias gunc='git uncommit'
alias gm='git merge'
alias gms='git merge --squash'
alias gam='git amend --reset-author'
alias grv='git remote -v'
alias grr='git remote rm'
alias grad='git remote add'
alias gr='git rebase'
alias gra='git rebase --abort'
alias ggrc='git rebase --continue'
alias gbi='git rebase --interactive'
alias gl='git l'
alias glg='git l'
alias glog='git l'
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

#jrnl
alias j='jrnl'