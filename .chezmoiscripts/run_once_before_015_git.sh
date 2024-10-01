#!/bin/bash

# COPIED: https://github.com/CoreyMSchafer/dotfiles/blob/17dff1bbd8d6e4909800e163c16f6991f9fcc68d/brew.sh#L58-L68

if type git &>/dev/null; then
    # Git config name
    echo "Please enter your FULL NAME for Git configuration:"
    read git_user_name

    # Git config email
    echo "Please enter your EMAIL for Git configuration:"
    read git_user_email

    # Set my git credentials
    git config --global user.name "$git_user_name"
    git config --global user.email "$git_user_email"
else
    echo "git command not recongnised!"
fi
