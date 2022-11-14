alias g="git"
alias ga="git add ."
alias gc="git commit -m"
alias gac='git add . && git commit -m'
alias gpush="git push"
alias gpushf="git push -f"
alias gcom="git checkout master"
alias gco="git checkout"
alias gf="git fetch"
alias gpull="git pull --rebase"
alias gpulln="git pull"
alias gamm="git commit --ammend -a"
alias grm="git rebase master"

direnv hook fish | source
starship init fish | source

alias config='/usr/bin/git --git-dir=/Users/ethancavill/.cfg/ --work-tree=/Users/ethancavill'
export NVM_DIR=~/.nvm
export EDITOR="code -w"
set PATH /Users/ethancavill/.nvm/versions/node/v19.0.1/bin $PATH
