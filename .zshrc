export ZSH="$HOME/.oh-my-zsh"
export PATH=$PATH:./node_modules/.bin
# Plugin Management with Antidote
source ~/.antidote/antidote.zsh

# Core Zsh Options
setopt AUTO_CD HIST_IGNORE_DUPS SHARE_HISTORY EXTENDED_HISTORY

# Theme
ZSH_THEME="robbyrussell"

source $ZSH/oh-my-zsh.sh

# Autosuggestion Optimization
# ZSH_AUTOSUGGEST_HIGHLIGHT_STYLE="fg=#767676,standout"
ZSH_AUTOSUGGEST_HIGHLIGHT_STYLE="fg=#767676,underline"
ZSH_AUTOSUGGEST_STRATEGY=(history completion)
ZSH_AUTOSUGGEST_USE_ASYNC=true

# History Management
setopt SHARE_HISTORY HIST_EXPIRE_DUPS_FIRST
HISTFILE="$HOME/.zsh_history"
HISTSIZE=9999
SAVEHIST=1000
bindkey '\e[A' history-search-backward
bindkey '\e[B' history-search-forward

# Smart Completion
autoload -Uz compinit
compinit -C
zstyle ':completion:*' menu select
zstyle ':completion:*' matcher-list 'm:{a-z}={A-Z}'

# Development Environment
export PATH="$HOME/.local/bin:$HOME/.cargo/bin:$PATH"
export EDITOR='vim'
export LANG=en_US.UTF-8

# Quick Navigation
alias ..='cd ..'
alias ...='cd ../..'

# Update and Upgrade
alias sys.update='sudo apt update && sudo apt upgrade -y'
alias sys.upgrade='sudo apt full-upgrade -y'

# System Cleanup
alias sys.clean='sudo apt autoremove && sudo apt clean && sudo apt autoclean'

# Activate solveWithPython venv
alias pythonsolve='source /home/jatkishan/.local/share/virtualenvs/solveWithPython-4w7AOZSU/bin/activate'
# file/dir autojump
[[ -s /usr/share/autojump/autojump.zsh ]] && source /usr/share/autojump/autojump.zsh

# Antidote Plugin Management
antidote bundle < ~/.zsh_plugins.txt > ~/.zsh_plugins.sh
source ~/.zsh_plugins.sh