export ZSH="$HOME/.oh-my-zsh"

DISABLE_LS_COLORS="true"
COMPLETION_WAITING_DOTS="true"

export CPPFLAGS="-I/usr/local/opt/openjdk/include"
export PATH="/usr/local/opt/openjdk/bin:$PATH"

# FZF settings
export FZF_BASE="$HOME/.fzf"
export FZF_DEFAULT_COMMAND='rg --hidden --no-ignore --files -g "!.git/"'
export FZF_CTRL_T_COMMAND=$FZF_DEFAULT_COMMAND
export FZF_DEFAULT_OPTS='--height 40% --layout=reverse --border'

ZSH_THEM=E"robbyrussell"

ZSH_AUTOSUGGEST_HIGHLIGHT_STYLE="fg=244"

plugins=(
  git
  zsh-z
  zsh-nvm
  docker
  kubectl
  fzf	
)

alias python=python3
alias gs="git status"

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

alias config='/usr/bin/git --git-dir=/Users/ethancavill/.cfg/ --work-tree=/Users/ethancavill'

alias lss="/bin/ls"
alias ls="exa --icons"
alias ll="exa -l -g --icons"
alias lt="exa --tree --icons -a -I '.git|__pycache__|.mypy_cache|.ipynb_checkpoints'"
alias fp="fzf --preview 'bat --style=numbers --color=always --line-range :500 {}'"

source $ZSH/oh-my-zsh.sh

source /usr/local/share/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh
source /usr/local/share/zsh-autosuggestions/zsh-autosuggestions.zsh

export EDITOR="code-insiders -w"

eval "$(starship init zsh)"

eval "$(direnv hook zsh)"

[ -f ~/.fzf.zsh ] && source ~/.fzf.zsh
