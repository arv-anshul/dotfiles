#! /bin/bash

# Install HOMEBREW
while true; do
    read -p "Install Homebrew? (y/n): " answer
    if [[ $answer == "y" ]] || [[ $answer == "Y" ]]; then
        /bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"
        echo "Setting up Homebrew..."

        # To add HOMEBREW >> opt/hombrew/bin in the PATH.
        echo 'eval $(/opt/homebrew/bin/brew shellenv)' >> ${HOME}/.zprofile
        eval $(/opt/homebrew/bin/brew shellenv)
        break
    elif [[ $answer == "n" ]] || [[ $answer == "N" ]]; then
        echo "Homebrew will not be installed."
        break
    else
        echo "Invalid input. Please enter 'y' or 'n'."
    fi
done


# Install Oh-My-Zsh
while true; do
    read -p "Install Oh My Zsh? (y/n): " answer
    if [[ $answer == "y" ]] || [[ $answer == "Y" ]]; then
        sh -c "$(curl -fsSL https://raw.github.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"
        echo "Oh My Zsh has been installed."
        break
    elif [[ $answer == "n" ]] || [[ $answer == "N" ]]; then
        echo "Oh My Zsh will not be installed."
        break
    else
        echo "Invalid input. Please enter 'y' or 'n'."
    fi
done


# Install Oh-My-Zsh Plugins
while true; do
    read -p "Install some required Oh-My-Zsh Plugins (y/n): " answer
    if [[ $answer == "y" ]] || [[ $answer == "Y" ]]; then
        echo "Installing 'zsh-syntax-highlighting' and 'zsh-autosuggestions' puglins."
        git clone https://github.com/zsh-users/zsh-syntax-highlighting.git ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-syntax-highlighting
        git clone https://github.com/zsh-users/zsh-autosuggestions ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-autosuggestions
        break
    elif [[ $answer == "n" ]] || [[ $answer == "N" ]]; then
        echo "Not installing Oh-My-Zsh Plugins."
        break
    else
        echo "Invalid input. Please enter 'y' or 'n'."
    fi
done


# Install SPOT-X for Spotify >> this remove all ads from Spotify
# >> FIRST NEED TO INSTALL SPOTIFY TO TAKE THIS IN EFFECT
# Check for Spotify in the /Applications directory
while true; do
    read -p "Install Spotify Crack (y/n): "
    if [[ $answer == "y" ]] || [[ $answer == "Y" ]]; then
        if [[ -d "/Applications/Spotify.app" ]]; then
            echo "Spotify is installed."
            bash <(curl -sSL https://raw.githubusercontent.com/SpotX-CLI/SpotX-Mac/main/install.sh)
            echo "Spotify crack is installed"
            break
        else
            echo "Spotify is not installed."
    elif [[ $answer == "n" ]] || [[ $answer == "N" ]]; then
        echo "Spotify crack is not installing."
        break
    else
        echo "Invalid input. Please enter 'y' or 'n'."
    fi
done
