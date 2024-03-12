.ONESHELL:

SHELL := /bin/bash
.DEFAULT_GOAL := help

PYTHON ?= python3

help:  ## Help command for Makefile
	curl -sSL https://gist.githubusercontent.com/arv-anshul/84a87b6ac9b15f51b9b8d0cdeda33f5f/raw/f48d6fa8d2e5e5769af347e8baa2677cc254c5c6/make_help_decorator.py | $(PYTHON)

# ----------------------- Run install script ----------------------- #

install: install.sh  ## Run `install.sh` script
	chmod +x ./$< && ./$<

# ----------------------- Install Basic Requirements Commands ----------------------- #

brew:  ## Install homebrew using curl
	/bin/bash -c "$$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"

omz:  ## Install oh-my-zsh for terminal
	sh -c "$$(curl -fsSL https://raw.github.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"

rye:  ## Install `rye` as python project management tool
	curl -sSf https://rye-up.com/get | bash

# --------------------------- Install Packages & Commands --------------------------- #

zsh-plugins:  ## Install oh-my-zsh plugins
	git clone https://github.com/zsh-users/zsh-history-substring-search.git ~/.oh-my-zsh/custom/plugins/zsh-history-substring-search
	git clone https://github.com/zsh-users/zsh-syntax-highlighting.git ~/.oh-my-zsh/custom/plugins/zsh-syntax-highlighting
	git clone https://github.com/zsh-users/zsh-autosuggestions.git ~/.oh-my-zsh/custom/plugins/zsh-autosuggestions
	echo "Installed '(zsh-history-substring-search zsh-syntax-highlighting zsh-autosuggestions)' to enable these \
		write the 'plugins' field in ~/.zshrc file."

spotify-mod:  ## Install SPOT-X for spotify
	curl -sSL https://raw.githubusercontent.com/SpotX-CLI/SpotX-Mac/main/install.sh | bash
