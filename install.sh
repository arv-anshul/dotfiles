#!/bin/bash

ZSHRC="${HOME}/.zshrc"
OMZ_PATH="${HOME}/.oh-my-zsh"

echo -e "Installation is only for '${ZSHRC}' and macos files.\n"

function ask() {
    echo -en "$1 (Y/n): "
    read resp
    if [ -z "$resp" ]; then
        response_lc="n" # empty is No
    else
        response_lc=$(echo "$resp" | tr '[:upper:]' '[:lower:]') # case insensitive
    fi
    [ $response_lc = "y" ]
}

# Install some essential packages

## Install Homebrew
if ask "Do you want to install Homebrew?"; then
    /bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"
fi

## Install Oh-My-Zsh
echo -e "\nType \`exit\` after 'oh-my-zsh' is installed. Because 'omz' start new zsh session."
if ask "Do you want to install Oh My ZSH?"; then
    /bin/sh -c "$(curl -fsSL https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"
fi

## Install Oh-My-Zsh Plugins
if [ -d $OMZ_PATH ]; then
    if ask "Do you want to install some required Oh-My-Zsh Plugins?"; then
        git clone https://github.com/zsh-users/zsh-syntax-highlighting.git ${OMZ_PATH}/custom/plugins/zsh-syntax-highlighting
        git clone https://github.com/zsh-users/zsh-autosuggestions.git ${OMZ_PATH}/custom/plugins/zsh-autosuggestions
        git clone https://github.com/zsh-users/zsh-history-substring-search.git ${OMZ_PATH}/custom/plugins/zsh-history-substring-search
    fi
fi

## Install agnoster theme for terminal
if ask "Install agnoster theme for terminal?"; then
    cp scripts/agnoster-arv.zsh-theme $OMZ_PATH/custom/
    echo "Now, you have to put \`ZSH_THEME=\"agnoster-arv\"\` into '$ZSHRC' file."
fi

# Create `.zshrc` file (if not exists)
if [ ! -f $ZSHRC ]; then touch $ZSHRC; fi

## Copy and append `.zshrc` content
if ask "Copy and append '.zshrc' file content into '$ZSHRC'"; then
    # If omz installed just now then it create new ~/.zshrc file and move the content
    # in "$HOME/.zshrc.pre-oh-my-zsh"
    if [[ -e "$HOME/.zshrc.pre-oh-my-zsh" && -d $OMZ_PATH ]]; then
        rm $ZSHRC
        mv $HOME/.zshrc.pre-oh-my-zsh $ZSHRC
    fi
    cat .zshrc >> $ZSHRC
fi

# Add configs into `.zshrc`
DOT_CONFIG="${HOME}/.config"

## Create `~./config` dir (if not exists)
if [ ! -d $DOT_CONFIG ]; then
    mkdir $DOT_CONFIG
    echo "DOT_CONFIG=\"${HOME}/.config\"" >> $ZSHRC
fi

## Copy essential files into `~/.config` folder and source them into `~/.zshrc`

#? Listed files must be present into `srcipts/shell/` directory
files_list=( "aliases.sh" )

if ask "Source essential scripts into '$ZSHRC'"; then
    for file in $files_list; do
        echo "Copying '$file' into '$DOT_CONFIG/$file'"
        cp ./scripts/shell/$file $DOT_CONFIG/$file
        echo source $DOT_CONFIG/$file >> $ZSHRC
    done
fi

echo -e "\nRestart the terminal to the effect."
