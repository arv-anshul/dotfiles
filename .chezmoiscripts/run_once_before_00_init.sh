#!/usr/bin/env bash

# This file is run before any others which instal xcode tools and install brew too.

# Install xcode tools
xcode-select --install

# Check if Homebrew is installed
if ! command -v brew &> /dev/null; then
    echo "🍺 Homebrew is not installed. Installing..."

    # Install Homebrew
    /bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"

    # Add Homebrew to PATH
    eval "$(/opt/homebrew/bin/brew shellenv)"

    # Update Homebrew
    brew update

    echo "🍻 Homebrew is installed."
else
    echo "🍻 Homebrew is already installed."
fi
