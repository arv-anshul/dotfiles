#! /bin/zsh

# IMPORTANT NOTE
# If this doesn't work then try to run every files mannually by
# chmod +x <<script>>.sh
# ./<<script>>.sh

# Initialization
echo "################ Installing install.sh ################"
sleep 2
source curl.sh  # curl script
source macos.sh  # macos script

# create symlinks (will overwrite old dotfiles)
source symlinks.sh ${HOME}     # require HOME directory PATH
source ${HOME}/.zshrc
