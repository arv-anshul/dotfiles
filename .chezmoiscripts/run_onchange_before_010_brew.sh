#!/usr/bin/env bash

set -euo pipefail

# Verify brew is now accessible
if ! type brew &>/dev/null; then
    echo "Failed to configure Homebrew in PATH. Please add Homebrew to your PATH manually."
    exit 1
fi

# terminal configs
packages=(
    starship
    zsh-autosuggestions
    zsh-completions
    zsh-fast-syntax-highlighting
    zsh-history-substring-search
)

# extra tools
packages+=(
    bat
    tree
)

# basic casks
casks=(
    arc
    docker
    raycast
    visual-studio-code
    vlc
    zed
    zen-browser
)

# utility casks
casks+=(
    aldente  # utility to limit maximum charging percentage
    jordanbaird-ice  # menu bar manager
    lulu  # firewall to block unknown outgoing connections
    pearcleaner  # utility to uninstall apps and leftover files
    stats  # system monitor in the menu bar
)

# install all the packages
brew install ${packages[@]}
brew install --cask ${casks[@]}
