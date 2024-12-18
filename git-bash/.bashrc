# Vi mode
set -o vi

# History Configuration
HISTTIMEFORMAT="%F %T "
HISTCONTROL=ignoredups
HISTSIZE=2000
HISTFILESIZE=2000
shopt -s histappend

# Color Definitions
blk='\[\033[01;30m\]'   # Black
red='\[\033[01;31m\]'   # Red
grn='\[\033[01;32m\]'   # Green
ylw='\[\033[01;33m\]'   # Yellow
blu='\[\033[01;34m\]'   # Blue
pur='\[\033[01;35m\]'   # Purple
cyn='\[\033[01;36m\]'   # Cyan
wht='\[\033[01;37m\]'   # White
clr='\[\033[00m\]'      # Reset

# Git Aliases
alias gs='git status'
alias ga='git add'
alias gaa='git add --all'
alias gc='git commit'
alias gl='git log --oneline'
alias gb='git checkout -b'
alias gd='git diff'

# Navigation Aliases
alias ..='cd ..; pwd'
alias ...='cd ../..; pwd'
alias ....='cd ../../..; pwd'

# Utility Aliases
alias c='clear'
alias h='history'
alias tree='tree --dirsfirst -F'
alias mkdir='mkdir -p -v'

# Calendar Month Aliases
for month in {01..12}; do
    alias $(date -d "$month/1" +%b)="cal -m $month"
done

# Custom Alias Example
alias kiti='python -u "e:\01_DYS\01_github\02_kiti-assistant\kiti.py"'

# Functions
function hg() {
    history | grep "$1"
}

# find large files
function lfile() {
    du -h -x -s -- * | sort -r -h | head -20
}

function git_init() {
    if [ -z "$1" ]; then
        printf "%s\n" "Please provide a directory name.";
    else
        mkdir "$1";
        builtin cd "$1";
        pwd;
        git init;
        touch readme.md .gitignore LICENSE;
        echo "# $(basename $PWD)" >> readme.md
    fi
}

function bash_prompt() {
    if git rev-parse --is-inside-work-tree &>/dev/null; then
        local branch=$(git symbolic-ref --short HEAD 2>/dev/null)
        if [ -n "$branch" ]; then
            PS1='${debian_chroot:+($debian_chroot)}\[\033[36m\]→ \W \[\033[34m\]git:(\[\033[31m\]'"$branch"'\[\033[34m\])\[\033[00m\] × '
        else
            PS1='${debian_chroot:+($debian_chroot)}\[\033[36m\]→ \W \[\033[34m\]git:(detached)\[\033[00m\] × '
        fi
    else
        PS1='${debian_chroot:+($debian_chroot)}\[\033[36m\]→ \W\[\033[00m\] × '
    fi
}

export PROMPT_COMMAND='bash_prompt'