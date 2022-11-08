#! /bin/zsh

# brew formulae
brew install tree
brew install mas    # Mac App Store

# install macOS applications
brew install franz
brew install spotify

echo "######################## INSTALLING SPOT-X FOR SPOTIFY ###########################"
# install SPOT-X for Spotify >> this remove all ads from Spotify
# >> FIRST NEED TO INSTALL SPOTIFY TO TAKE THIS IN EFFECT
bash <(curl -sSL https://raw.githubusercontent.com/SpotX-CLI/SpotX-Mac/main/install.sh)

brew install cold-turkey-blocker
brew install firefox
brew install vlc

# for coding
brew install python@3.11
brew install visual-studio-code

# oh-my-zsh plugins >> others are in curl.sh
brew install zsh-history-substring-search

# install fonts
brew install homebrew/cask-fonts/font-cascadia-code 

# print all the packages
brew list
sleep 5