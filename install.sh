#!/bin/bash

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

# List of files/folders to symlink in $HOME
files=(
    .zshrc
    aliases.sh
)

# Create a backup of dotfiles in a directory
BACKUP_DIR="${HOME}/.backup"
mkdir $BACKUP_DIR
for file in "${files[@]}"; do
    echo "Creating backup of $file in $BACKUP_DIR."
    if [-f "${HOME}/$file" ]; then
        mv $file $BACKUP_DIR
    fi
done

# Create symlinks (will overwrite old dotfiles)
for file in "${files[@]}"; do
    echo "Creating symlink to $file in home directory."
    ln -sf "$(pwd)/${file}" "${HOME}/.${file}"
done

# Run all scripts from `scripts/` directory
for script in scripts/*; do
    echo "Running ./$script"
    ./$script
done

# Create `~/.config` dir (if not exists)
if [ ! -d "~/.config" ]; then mkdir "~/.config"; fi

# Create symlink of some config files to their location
links=(
    "$(pwd)/.config/starship.toml ${HOME}/.config/starship.toml"
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

echo "Installation Complete!"
echo "Restart the terminal to the effect."
