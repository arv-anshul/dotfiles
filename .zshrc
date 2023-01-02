############################ oh-my-zsh #############################
# Path to your oh-my-zsh installation.
if [ -n $HOME/.oh-my-zsh ]; then
    export ZSH="$HOME/.oh-my-zsh"
    ## To use my updated agnoster-arv theme you have to 
    ## move <agnoster-arv> file to < ~/.oh-my-zsh/custom/theme> folder
    ZSH_THEME="agnoster-arv"
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
export PATH=/opt/homebrew/bin:/Library/Frameworks/Python.framework/Versions/3.11/bin:/Users/iarv/Library/Python/3.9/bin:/usr/local/bin:/usr/bin:/bin:/usr/sbin:/sbin

############################ EXTRAS #############################
