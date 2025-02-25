#!/bin/bash

# COPIED: https://github.com/CoreyMSchafer/dotfiles/blob/17dff1bbd8d6e4909800e163c16f6991f9fcc68d/brew.sh#L58-L68

if command -v git &> /dev/null; then
    # Git config name
    echo "✏️ Please enter your FULL NAME for Git configuration:"
    read git_user_name

    # Git config email
    echo "✉️ Please enter your EMAIL for Git configuration:"
    read git_user_email

    # Set my git credentials
    git config --global user.name "$git_user_name"
    git config --global user.email "$git_user_email"

    echo "🔑 Add SSH key to GitHub manually!"
    echo "👀 See: https://docs.github.com/en/authentication/connecting-to-github-with-ssh/about-ssh"
else
    echo "☠️ git command not recognized!"
fi
