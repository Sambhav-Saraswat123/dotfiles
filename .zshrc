# Setup zinit
ZINIT_HOME="${XDG_DATA_HOME:-${HOME}/.local/share}/zinit/zinit.git"

if [ ! -d "$ZINIT_HOME" ]; then
   mkdir -p "$(dirname $ZINIT_HOME)"
   git clone https://github.com/zdharma-continuum/zinit.git "$ZINIT_HOME"
fi

eval "$(/opt/homebrew/bin/brew shellenv)"

source "${ZINIT_HOME}/zinit.zsh"

zinit light zsh-users/zsh-syntax-highlighting
zinit light zsh-users/zsh-completions
zinit light zsh-users/zsh-autosuggestions

# Add snippets
zinit snippet OMZP::git
zinit snippet OMZP::sudo

# Load completions
autoload -U compinit && compinit

zinit cdreplay -q

bindkey -e
bindkey '^p' history-search-backward
bindkey '^n' history-search-forward

# History
HISTSIZE=1000
HISTFILE=~/.zsh_history
SAVEHIST=$HISTSIZE
HISTDUP=erase
setopt appendhistory
setopt sharehistory
setopt hist_ignore_space
setopt hist_ignore_all_dups
setopt hist_save_no_dups
setopt hist_ignore_dups
setopt hist_find_no_dups

# Completion styling
zstyle ':completion:*' matcher-list 'm:{a-z}={A-Za-z}'
zstyle ':completion:*' list-colors "${(s.:.)LS_COLORS}"

# Aliases
alias vim='nvim'
alias ls='ls --color'
alias python='python3'
alias lg="lazygit"

# Shell integrations
eval "$(zoxide init --cmd cd zsh)"

# Oh My Posh
eval "$(oh-my-posh init zsh --config $HOME/.config/ohmyposh/config.toml)"

# Don't load OMP for default terminal app
if [ "$TERM_PROGRAM" != "Apple_Terminal" ]; then
  eval "$(oh-my-posh init zsh)"
fi
