#!/bin/bash

# COPIED: https://github.com/CoreyMSchafer/dotfiles/blob/17dff1bbd8d6e4909800e163c16f6991f9fcc68d/brew.sh

# Install Homebrew if it isn't already installed
if ! command -v brew &>/dev/null; then
    echo "Homebrew not installed. Installing Homebrew."
    /bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"

    # Attempt to set up Homebrew PATH automatically for this session
    if [ -x "/opt/homebrew/bin/brew" ]; then
        # For Apple Silicon Macs
        echo "Configuring Homebrew in PATH for Apple Silicon Mac..."
        export PATH="/opt/homebrew/bin:$PATH"
    fi
else
    echo "Homebrew is already installed."
fi

# Verify brew is now accessible
if ! command -v brew &>/dev/null; then
    echo "Failed to configure Homebrew in PATH. Please add Homebrew to your PATH manually."
    exit 1
fi

# Update Homebrew and Upgrade any already-installed formulae
brew update
brew upgrade
brew upgrade --cask
brew cleanup

# Install required and optional formaulas and cask using brew
echo "Installing required brew formula or cask!"
required_brew=(
    starship  # Terminal prompt customization
    zsh-autosuggestions  # zsh plugin
    zsh-completions  # zsh plugin
    zsh-fast-syntax-highlighting  # zsh plugin
    zsh-history-substring-search  # zsh plugin
)

# Loop over the `formulas` array to install each formula
for item in "${required_brew[@]}"; do
    if brew list | grep -q "^$item\$"; then
        echo "$item is already installed. Skipping..."
    else
        echo "Installing $item..."
        brew install "$item"
    fi
done

echo "Installing optional brew formula or cask!"
optional_brew=(
    arc
    bat
    docker
    go-task
    raycast
    rye
    stats
    tree
    visual-studio-code
    vlc
    zed
)

for item in "${optional_brew[@]}"; do
  # Check if item is already installed
    if brew list | grep -q "^$item\$"; then
        echo "$item is already installed. Skipping..."
    else
        # Ask for confirmation before installing
        read -r -p "Install $item? (y/N) " response
        if [[ $response =~ ^[Yy]$ ]]; then
            echo "Installing $item..."
            brew install "$item"
        else
            echo "Skipping $item installation."
        fi
    fi
done

# Update and clean up again for safe measure
brew update
brew upgrade
brew upgrade --cask
brew cleanup
