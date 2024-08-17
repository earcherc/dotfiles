# Path to your oh-my-zsh installation
export ZSH="$HOME/.oh-my-zsh"

# General settings
DISABLE_LS_COLORS="true"
COMPLETION_WAITING_DOTS="true"

# OpenJDK settings
export CPPFLAGS="-I/usr/local/opt/openjdk/include"
export PATH="/usr/local/opt/openjdk/bin:$PATH"

# Anaconda settings
export PATH="/Users/ethancavill/anaconda3/bin:$PATH"

# LaTeX (MacTeX) settings
export PATH="/Library/TeX/texbin:$PATH"

# Zsh theme
ZSH_THEME="robbyrussell"

# Zsh autosuggestions highlight style
ZSH_AUTOSUGGEST_HIGHLIGHT_STYLE="fg=244"

# Plugins
plugins=(
  git
  zsh-z
  zsh-nvm
  docker
)

# Aliases

alias config="/usr/bin/git --git-dir=/Users/ethancavill/.cfg/ --work-tree=/Users/ethancavill"
alias lss="/bin/ls"

# Eza commands
alias ld='eza -lD'
alias lf='eza -lf --color=always | grep -v /'
alias lh='eza -dl .* --group-directories-first'
alias ll='eza -al --group-directories-first'
alias ls='eza -alf --color=always --sort=size | grep -v /'
alias lt='eza -al --sort=modified'

# Exa command descs

# ld — lists only directories (no files)
# lf — lists only files (no directories)
# lh — lists only hidden files (no directories)
# ll — lists everything with directories first
# ls — lists only files sorted by size
# lt — lists everything sorted by time updated

# Source oh-my-zsh
source $ZSH/oh-my-zsh.sh

# Zsh syntax highlighting and autosuggestions
[[ -f /usr/local/share/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh ]] && source /usr/local/share/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh
[[ -f /usr/local/share/zsh-autosuggestions/zsh-autosuggestions.zsh ]] && source /usr/local/share/zsh-autosuggestions/zsh-autosuggestions.zsh

# Set default editor
export EDITOR="code -w"

# Initialize starship prompt
eval "$(starship init zsh)"

# Initialize direnv
eval "$(direnv hook zsh)"

# OpenSSL library path
export LIBRARY_PATH=$LIBRARY_PATH:/usr/local/opt/openssl/lib/
