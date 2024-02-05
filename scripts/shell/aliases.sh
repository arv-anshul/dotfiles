#!/bin/bash

# Custom Alias of @arv-anshul
alias cls="clear"
alias Codes="cd ~/Developer/Codes-Local"
alias dk="docker"
alias dkc="docker-compose"
alias dmake="make -f ~/Developer/Makefile"
alias zshc="code ~/.zshrc"
alias zshs='source ~/.zshrc'
alias zx="exit"
alias zz="clear"

# Alias for GIT
alias g="git"
alias ga="git add";
alias gac="git add . && git commit -a -m"
alias gb="git branch";
alias gch="git checkout";
alias gcm="git checkout main";
alias gd="git diff";
alias gf="git fetch origin";
alias gfa="git fetch --all";
alias glog="git log --color --graph --pretty=format:'%Cred%h%Creset -%C(yellow)%d%Creset %s %Cgreen(%cr) %C(bold blue)<%an>%Creset' --abbrev-commit --branches"
alias gpull="git pull";
alias gpush="git push";
alias gra="git remote add"
alias grf="git reflog";
alias grv="git remote -v"
alias gs="git status";
function gc { git commit -m "$@"; }

# Alias for Python
alias py="python3"
alias pygr="pip freeze | grep"
alias pyi="pip install -U"
alias pyir="pip install -r requirements.txt"
alias pyls="pip list"
alias pyun-all="pip freeze | xargs pip uninstall -y -q"
alias pyun="pip uninstall"

function pycls() {
    find . -name '.DS_Store' -type f -delete
    find . -type d -name "__pycache__" -exec rm -rfv {} \; 2>/dev/null
    find . -type d -name ".ipynb_checkpoints" -exec rm -rfv {} \; 2>/dev/null
    find . -type d -name ".ruff_cache" -exec rm -rfv {} \; 2>/dev/null
    find . -type f -name "*.pyc" -exec rm -fv {} \; 2>/dev/null
}

# Activate python virtual environment (defualt '.venv')
function vrun() {
    local name="${1:-".venv"}"
    local venvpath="${name:P}"

    if [[ ! -d "$venvpath" ]]; then
        echo >&2 "Error: no such venv in current directory: $name"
        return 1
    fi

    if [[ ! -f "$venvpath/bin/activate" ]]; then
        echo >&2 "Error: '$name' is not a proper virtual environment"
        return 1
    fi

    . "$venvpath/bin/activate" || return $?
    echo "Activated virtual environment $name"
}

# Create a new virtual environment (default '.venv')
function py-venv() {
    local name="${1:-".venv"}"
    virtualenv "$name"
    echo >&2 "Created venv in '${name:P}' using virtualenv."
    vrun "$name"
}
