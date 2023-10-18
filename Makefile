.ONESHELL:

SHELL := /bin/bash
.DEFAULT_GOAL := help


define PRINT_HELP_PYSCRIPT
import re, sys

class Style:
    BLACK = '\033[30m'
    BLUE = '\033[34m'
    BOLD = '\033[1m'
    CYAN = '\033[36m'
    GREEN = '\033[32m'
    MAGENTA = '\033[35m'
    RED = '\033[31m'
    WHITE = '\033[37m'
    YELLOW = '\033[33m'
    ENDC = '\033[0m'

print(f"{Style.BOLD}Please use `make <target>` where <target> is one of{Style.ENDC}")

for line in sys.stdin:
	match = re.match(r'^([a-zA-Z_-]+):.*?## (.*)$$', line)
	if line.startswith("# -------"):
		print(f"\n{Style.RED}{line}{Style.ENDC}")
	if match:
		target, help_msg = match.groups()
		if not target.startswith('--'):
			print(f"{Style.BOLD+Style.GREEN}{target:20}{Style.ENDC} - {help_msg}")

print()
endef

export PRINT_HELP_PYSCRIPT

# If you want a specific Python interpreter define it as an envvar
# $ export PYTHON_ENV=
ifdef PYTHON_ENV
	PYTHON := $(PYTHON_ENV)
else
	PYTHON := python3
endif

help:
	@$(PYTHON) -c "$$PRINT_HELP_PYSCRIPT" < $(MAKEFILE_LIST)


# ---------------------------------- cURL Commands ---------------------------------- #
.PHONY: curl

curl: curl-brew curl-ohmyzsh  ## Install important commands like brew, oh-my-zsh,

curl-brew:  ## Install homebrew using curl
	echo "################ Installing Homebrew ################"
	/bin/bash -c "$$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"

	# Add HOMEBREW >> opt/hombrew/bin in the PATH.
	echo 'eval $$(/opt/homebrew/bin/brew shellenv)' >> $${HOME}/.zprofile
	eval $$(/opt/homebrew/bin/brew shellenv)

curl-ohmyzsh:  ## Install oh-my-zsh for terminal
	sh -c "$$(curl -fsSL https://raw.github.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"

# --------------------------- Install Packages & Commands --------------------------- #

brew: curl  ## Install important packages using brew (first specify them in Makefile)
	@echo "Specify your packages to install them with Homebrew"
	brew install tree

	# brew install spotify
	# brew install cold-turkey-blocker
	# brew install vlc
	brew install visual-studio-code
	# brew install rectangle

zsh-plugins:  ## Install oh-my-zsh plugins
	brew install zsh-history-substring-search
	git clone https://github.com/zsh-users/zsh-syntax-highlighting.git $${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-syntax-highlighting
	git clone https://github.com/zsh-users/zsh-autosuggestions $${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-autosuggestions

spotify-mod:  ## Install SPOT-X for spotify
	bash <(curl -sSL https://raw.githubusercontent.com/SpotX-CLI/SpotX-Mac/main/install.sh)
