#! /bin/zsh

if [ "$#" -ne 1 ]; then
    echo "Usage: install.sh <home_directory>"
    exit 1
fi

homedir=$1

# dotfiles directory
dotfiledir=${homedir}/dotfiles

# checking for oh-my-zsh dotfile present
if [ -n $HOME/.oh-my-zsh ]; then
    omzsh="zshrc"
else
    omzsh=""
fi

# list of files/folders to symlink in ${homedir}
files="$omzsh aliases"

# change to the dotfiles directory
echo "Changing to the ${dotfiledir} directory"
cd ${dotfiledir}
echo "...done"

# create symlinks (will overwrite old dotfiles)
for file in ${files}; do
    echo "Creating symlink to .$file in home directory."
    ln -sf ${dotfiledir}/.${file} ${homedir}/.${file}
done
