#!/usr/bin/env bash

# Before running this script, install Homebrew (https://brew.sh/) and add it to your $PATH.
# See: https://docs.brew.sh/Installation#post-installation-steps
# ==========================
# This install formula and app according to my needs (@arv-anshul).
# First, take a look if you are using this for yourself.

set -euo pipefail

# Verify brew is now accessible
if ! command -v brew &> /dev/null; then
    echo "☠️ First add Homebrew to your PATH env."
    echo "👀 See: https://docs.brew.sh/Installation#post-installation-steps"
    exit 1
fi

# terminal configs
formula=(
    starship  # terminal prompt customizer
    zsh-autosuggestions
    zsh-completions
    zsh-fast-syntax-highlighting
    zsh-history-substring-search
)

# extra tools
formula+=(
    tree  # draw directory tree
)

echo -e "🧑‍💻 \033[1mOther important formula like uv, rustup, deno, etc. should be installed manually.\033[0m"

# basic casks
casks=(
    "ghostty"  # terminal emulator
    "vlc"  # media player
    "zen-browser"  # web browser
)

# utility casks
casks+=(
    lulu  # firewall to block unknown outgoing connections
    pearcleaner  # utility to uninstall apps and leftover files
    stats  # system monitor in the menu bar
)

echo -e "🧑‍💻 \033[1mOther important casks like Zed, VSCode, etc. should be installed manually.\033[0m"

# Unless HOMEBREW_NO_INSTALL_UPGRADE is set, brew install formula will
# upgrade formula if it is already installed but outdated.
export HOMEBREW_NO_INSTALL_UPGRADE="true"

# Install all formula and casks after updating homebrew
brew update
brew install ${formula[@]}
brew install --cask ${casks[@]}
brew doctor  # check if everything is fine
