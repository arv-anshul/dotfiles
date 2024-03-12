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

# Define formulas, casks, fonts, etc. as array

# ----------------- #
# Install formulas
# ----------------- #
formulas=(
    rye  # For python package management
    starship  # Terminal prompt customization
    zsh-autosuggestions  # zsh plugin
    zsh-completions  # zsh plugin
    zsh-fast-syntax-highlighting  # zsh plugin
    zsh-history-substring-search  # zsh plugin
)

# Loop over the `formulas` array to install each formula
for formula in "${formulas[@]}"; do
    if brew list --formula | grep -q "^$formula\$"; then
    echo "$formula is already installed. Skipping..."
    else
        echo "Installing $formula..."
        brew install "$formula"
    fi
done

# -------------- #
# Install casks
# -------------- #
casks=(
    arc  # Browser
    obisidian  # Note taking
    visual-studio-code  # Code editor
    vlc  # Media player
    zed  # Code editor
)

# Loop over the `casks` array to install each cask
for cask in "${casks[@]}"; do
    if brew list --cask | grep -q "^$cask\$"; then
    echo "$cask is already installed. Skipping..."
    else
        echo "Installing $cask..."
        brew install --cask "$cask"
    fi
done

# -------------- #
# Install fonts
# -------------- #
fonts=(
    homebrew/cask-fonts/font-jetbrains-mono-nerd-font
    homebrew/cask-fonts/font-poppins
)

# Loop over the `fonts` array to install each font
for font in "${fonts[@]}"; do
    if brew list --font | grep -q "^$font\$"; then
    echo "$font is already installed. Skipping..."
    else
        echo "Installing $font..."
        brew install "$font"
    fi
done

# Update and clean up again for safe measure
brew update
brew upgrade
brew upgrade --cask
brew cleanup
