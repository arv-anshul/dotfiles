#! /bin/bash

# Initialization
echo "################ Installing curl.sh ################"

# install brew
/bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"

# To add HOMEBREW >> opt/hombrew/bin in the PATH.
echo 'eval $(/opt/homebrew/bin/brew shellenv)' >> ${HOME}/.zprofile
eval $(/opt/homebrew/bin/brew shellenv)

# install oh-my-zsh
sh -c "$(curl -fsSL https://raw.github.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"
# install oh-my-zsh plugins
git clone https://github.com/zsh-users/zsh-syntax-highlighting.git ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-syntax-highlighting
git clone https://github.com/zsh-users/zsh-autosuggestions ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-autosuggestions

echo "######################## INSTALLING SPOT-X FOR SPOTIFY ###########################"
# install SPOT-X for Spotify >> this remove all ads from Spotify
# >> FIRST NEED TO INSTALL SPOTIFY TO TAKE THIS IN EFFECT
bash <(curl -sSL https://raw.githubusercontent.com/SpotX-CLI/SpotX-Mac/main/install.sh)
