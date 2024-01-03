############################ oh-my-zsh #############################
# Path to your oh-my-zsh installation.
if [ -n $HOME/.oh-my-zsh ]; then
    export ZSH="$HOME/.oh-my-zsh"
    ZSH_THEME="agnoster-arv"
    plugins=(zsh-autosuggestions zsh-syntax-highlighting zsh-history-substring-search)
    source $ZSH/oh-my-zsh.sh
fi

############################ CUSTOM ALIAS #############################
alias zshc="code ~/.zshrc"
alias zshs='source ~/.zshrc'
alias cls="clear"
alias zz="clear"
alias xx="clear"
alias zx="exit"
alias obsidian="cd ~/Documents/OBSIDIAN"
alias iCodes="cd ~/Documents/iCodes"
alias Codes="cd ~/This\ PC/Codes-Local"
alias dmake="make -f ~/Developer/Makefile"
alias dk="docker"

## git aliases
alias g="git"
function gc { git commit -m "$@"; }
alias gcm="git checkout main";
alias gch="git checkout";
alias gs="git status";
alias ga="git add";
alias gb="git branch";
alias gpull="git pull";
# alias gf="git fetch";
alias gfa="git fetch --all";
alias gf="git fetch origin";
alias gpush="git push";
alias gd="git diff";
# alias gbr="git branch remote"
# alias gfr="git remote update"
# alias gbn="git checkout -B "
alias grf="git reflog";
# alias grh="git reset HEAD~" # last commit
alias gac="git add . && git commit -a -m"
# alias gsu="git gpush --set-upstream origin "
alias glog="git log --color --graph --pretty=format:'%Cred%h%Creset -%C(yellow)%d%Creset %s %Cgreen(%cr) %C(bold blue)<%an>%Creset' --abbrev-commit --branches"
alias grv="git remote -v"
alias gra="git remote add"


############################ Alias for Python #############################
alias py="python3"

alias pyi="pip install -U"
alias pyun="pip uninstall"
alias pyls="pip list"
alias pygr="pip freeze | grep"
alias pyir="pip install -r requirements.txt"
alias pyun-all="pip freeze | xargs pip uninstall -y -q"

function pycls() {
  find . -type d -name ".ipynb_checkpoints" -exec rm -rf {} \; 2>/dev/null
  find . -type d -name "__pycache__" -exec rm -rf {} \; 2>/dev/null
  find . -type f -name "*.pyc" -exec rm -f {} \; 2>/dev/null
  find . -name '.DS_Store' -type f -delete
  find . -type d -name ".ruff_cache" -exec rm -rf {} \; 2>/dev/null
}

# --- --- --- --- --- --- --- --- --- --- --- --- --- --- #
# Virtualenv utils
# --- --- --- --- --- --- --- --- --- --- --- --- --- --- #

# Activate a the python virtual environment specified.
# If none specified, use '.venv'.
function vrun() {
  local name="${1:-".venv"}"
  local venvpath="${name:P}"

  if [[ ! -d "$venvpath" ]]; then
    echo >&2 "Error: no such venv in current directory: $name"
    return 1
  fi

  if [[ ! -f "${venvpath}/bin/activate" ]]; then
    echo >&2 "Error: '${name}' is not a proper virtual environment"
    return 1
  fi

  . "${venvpath}/bin/activate" || return $?
  echo "Activated virtual environment ${name}"
}

# Create a new virtual environment, with default name '.venv'.
function py-venv() {
  local name="${1:-".venv"}"
  local venvpath="${name:P}"

  # python3 -m venv "${name}" || return
  virtualenv "${name}"
  echo >&2 "Created venv in '${venvpath}'"
  vrun "${name}"
}


############################ CUSTOMIZATION #############################
# HOMEBREW
export HOMEBREW_NO_AUTO_UPDATE=1
export PATH=/opt/homebrew/bin:/Library/Frameworks/Python.framework/Versions/3.11/bin:$HOME/Library/Python/3.9/bin:/usr/local/bin:/usr/bin:/bin:/usr/sbin:/sbin
