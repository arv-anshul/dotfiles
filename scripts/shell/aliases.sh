############################ CUSTOM ALIAS by arv-anshul #############################
# other aliases
alias zshrc="code ~./zshrc"
alias myip="curl http://ipecho.net/plain; echo"
alias usage='du -h -d1'
alias zshs="source ~/.zshrc"
alias ..='cd ..'
alias ...='cd ../..'
alias cls="clear"
alias zx="exit"

# Only for jupyter notebook
alias jn="jupyter notebook"
alias jt-t="jt -fs 100 -tfs 16 -fs 16 -ofs 16 -dfs 16 -cellw 85% -T -f firacode -nf exosans -nfs 16 -N -t"
alias jtdark="jt -t oceans16 -fs 100 -tfs 16 -fs 16 -ofs 16 -dfs 16 -cellw 85% -T -f firacode -nf exosans -nfs 16 -N"
alias jtlight="jt -t grade3 -fs 100 -tfs 16 -fs 16 -ofs 16 -dfs 16 -cellw 85% -T -f firacode -nf exosans -nfs 16 -N"

## git aliases
function gc { git commit -m "$@"; }
alias gcm="git checkout master";
alias gs="git status";
alias ga="git add";
alias gb="git branch";
alias gpull="git pull";
alias gf="git fetch";
alias gfa="git fetch --all";
alias gf="git fetch origin";
alias gpush="git push";
alias gd="git diff";
alias gbr="git branch remote"
alias gfr="git remote update"
alias gbn="git checkout -B "
alias grf="git reflog";
alias grh="git reset HEAD~" # last commit
alias gac="git add . && git commit -a -m "
alias gsu="git push --set-upstream origin "
alias glog="git log --color --graph --pretty=format:'%Cred%h%Creset -%C(yellow)%d%Creset %s %Cgreen(%cr) %C(bold blue)<%an>%Creset' --branches"
