export PATH=/usr/local/bin:/usr/bin:/bin:/usr/sbin:/sbin:$PATH

# Homebrew
export PATH=/opt/homebrew/bin:$PATH
export HOMEBREW_NO_AUTO_UPDATE=1

# Aliases: Basic
source $HOME/.aliases

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

# Rye: Python package manager
if [ -e "$HOME/.rye/env" ]; then
    source $HOME/.rye/env
    eval "$(rye self completion -s zsh)"
fi

export PATH=$HOME/.cargo/bin:$PATH
