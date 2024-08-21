# path to `dotfiles` directory
export DOTFILES="$HOME/Developer/dotfiles"

export PATH=/usr/local/bin:/usr/bin:/bin:/usr/sbin:/sbin:$PATH

# Homebrew
export PATH=/opt/homebrew/bin:$PATH
export HOMEBREW_NO_AUTO_UPDATE=1
export HOMEBREW_NO_INSTALL_CLEANUP=1

# Aliases: Basic
source $DOTFILES/.aliases

# ZSH: Basic Plugins
source /opt/homebrew/share/zsh-history-substring-search/zsh-history-substring-search.zsh
source /opt/homebrew/share/zsh-autosuggestions/zsh-autosuggestions.zsh
source /opt/homebrew/opt/zsh-fast-syntax-highlighting/share/zsh-fast-syntax-highlighting/fast-syntax-highlighting.plugin.zsh

## zsh-completions
if type brew &>/dev/null; then
    FPATH=$(brew --prefix)/share/zsh-completions:$FPATH
    autoload -Uz compinit
    compinit
fi

# Starship: Shell Prompt
if type starship &>/dev/null; then
    eval "$(starship init zsh)"
fi

# sync rust and cargo bins
export PATH="/opt/homebrew/opt/rustup/bin:$PATH"
export PATH="$HOME/.cargo/bin:$PATH"

# uv: python package manager
if [ -e "$HOME/.cargo/bin/uv" ]; then
    eval "$(uv generate-shell-completion zsh)"
fi

# ruff: formating and linting tool for python
RUFF_NO_CACHE="1"
