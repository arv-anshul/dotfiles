#!/bin/bash

# Check whether VSCode is installed
vscode_dir_path="$HOME/Library/Application Support/Code/User"
if [[ ! -d "$vscode_dir_path" ]]; then
    echo "VSCode is not installed!"
    exit 1
fi

files=(
    keybindings.json
    settings.json
    snippets
)

# Create a backup of files
backup_dir="$vscode_dir_path/.backup"
if [[ ! -d "$backup_dir" ]]; then mkdir "$backup_dir"; fi
for file in "${files[@]}"; do
    file_path="$vscode_dir_path/$file"
    if [[ -e "$file_path" ]]; then
        echo "Creating backup of $file_path"
        mv "$file_path" "$backup_dir";
    fi
done

for file in "${files[@]}"; do
    echo "Creating symlink of $file"
    ln -sf "`pwd`/.vscode/$file" "$vscode_dir_path"
done
