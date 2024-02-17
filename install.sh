#!/bin/bash

ZSHRC="${HOME}/.zshrc"

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

# Ask user to continue
ask "Do you want to continue the installation?"
if [ $? == 1 ]; then
    echo "🤯 Installation Cancelled!"
    exit 1
fi

## Install Homebrew
if [ ! -e "$(brew --prefix)" ]; then
    echo "Installing 🍺 Homebrew!"
    /bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"
else
    echo "Continuing, 🍻 Homebrew is already installed!"
fi

# --- Install brew packages --- #

## starship: For terminal prompt
# https://starship.rs
brew install starship

## Install zsh plugins using `brew`
brew install zsh-autosuggestions
brew install zsh-fast-syntax-highlighting
brew install zsh-history-substring-search
brew install zsh-completions

## rye: Python package manager
# https://rye-up.com
if ask "Install rye for python package management?"; then
    curl -sSf https://rye-up.com/get | bash
fi

# Create a backup of `.zshrc` as `.zshrc.bak` file (if exists)
if [ -f $ZSHRC ]; then mv $ZSHRC "$ZSHRC.bak"; fi

# Add configs into `.zshrc`
DOT_CONFIG="${HOME}/.config"

## Create `~./config` dir (if not exists)
if [ ! -d $DOT_CONFIG ]; then mkdir $DOT_CONFIG; fi

## Create symlinks of essential files into `~/.config` folder and source them into `~/.zshrc`
# A list containing source script path to create symlink to a destination path
links=(
    "$(pwd)/.zshrc $PATH/.zshrc"
    "$(pwd)/.config/aliases.sh $DOT_CONFIG/aliases.sh"
    "$(pwd)/.config/starship.toml $DOT_CONFIG/starship.toml"
)

for link in "${links[@]}"; do
    IFS=' ' read -r source_path destination_path <<< $link

    # Check if the source file exists
    if [ -e "$source_path" ]; then
        /bin/ln -s "$source_path" "$destination_path"
        echo "Created link: $destination_path -> $source_path"
    else
        echo "Source file does not exist: $source_path"
    fi
done

echo -e "\nRestart the terminal to the effect."
