############################ oh-my-zsh #############################
# Path to your oh-my-zsh installation.
if [ -n $HOME/.oh-my-zsh ]; then
    export ZSH="$HOME/.oh-my-zsh"
    ZSH_THEME="agnoster-arv"
    plugins=(zsh-autosuggestions zsh-syntax-highlighting zsh-history-substring-search)
    source $ZSH/oh-my-zsh.sh
fi
