############################ oh-my-zsh #############################
# Path to your oh-my-zsh installation.
if [ -n $HOME/.oh-my-zsh ]; then
    export ZSH="$HOME/.oh-my-zsh"
    ZSH_THEME="agnoster"
    plugins=(
        zsh-autosuggestions
        zsh-syntax-highlighting
        zsh-history-substring-search
        )
    source $ZSH/oh-my-zsh.sh
fi

############################ CUSTOMIZATION #############################
# HOMEBREW
export HOMEBREW_NO_AUTO_UPDATE=1
export PATH=/opt/homebrew/bin:/Users/iarv/Library/Python/3.9/bin:/usr/local/bin:/usr/bin:/bin:/usr/sbin:/sbin

############################ EXTRAS #############################
