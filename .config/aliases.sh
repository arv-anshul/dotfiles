#!/bin/bash

# Custom Alias of @arv-anshul
alias cls="clear"
alias dev="cd ~/Developer"
alias dk="docker"
alias dkc="docker-compose"
alias dmake="make -f ~/Developer/Makefile"
alias zshc="code ~/.zshrc"
alias zshs='source ~/.zshrc'
alias zx="exit"
alias zz="clear"

# Alias for GIT
alias g="git"
alias ga="git add"
alias gac="git add . && git commit -a -m"
alias gb="git branch"
alias gch="git checkout"
alias gcm="git checkout main"
alias gd="git diff"
alias gf="git fetch origin"
alias gfa="git fetch --all"
alias glog="git log --color --graph --pretty=format:'%Cred%h%Creset -%C(yellow)%d%Creset %s %Cgreen(%cr) %C(bold blue)<%an>%Creset' --abbrev-commit --branches"
alias gpull="git pull"
alias gpush="git push"
alias gra="git remote add"
alias grf="git reflog"
alias grv="git remote -v"
alias gs="git status"
alias gc="git commit -m"

# Alias for Python
alias py="python3"

# Alias for rye
alias pyls="rye toolchain list"
alias rsyn="rye sync --no-dev"
alias ryn="rye run"

function pycls() {
    find . -name '.DS_Store' -type f -delete
    find . -type d -name "__pycache__" -exec rm -rfv {} \; 2>/dev/null
    find . -type d -name ".ipynb_checkpoints" -exec rm -rfv {} \; 2>/dev/null
    find . -type d -name ".ruff_cache" -exec rm -rfv {} \; 2>/dev/null
    find . -type f -name "*.pyc" -exec rm -fv {} \; 2>/dev/null
}

function colormap() {
    range_start=${1:-0}
    range_end=${2:-255}

    for i in $(seq $range_start $range_end); do
        print -Pn "%K{$i} ${(l:3::0:)i} %k "
        [[ $((i % 12)) -eq 11 ]] && print
    done
}
