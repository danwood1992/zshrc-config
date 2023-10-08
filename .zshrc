# If you come from bash you might have to change your $PATH.
# export PATH=$HOME/bin:/usr/local/bin:$PATH
REALMDESK_DIR=~/imperisoft/realmdesk
# Path to your oh-my-zsh installation.
export ZSH="$HOME/.oh-my-zsh"

ZSH_THEME="robbyrussell"

zstyle ':omz:update' mode auto


DISABLE_MAGIC_FUNCTIONS="true"

# DISABLE_LS_COLORS="true"

# DISABLE_AUTO_TITLE="true"

ENABLE_CORRECTION="true"


# Caution: this setting can cause issues with multiline prompts in zsh < 5.7.1 (see #5765)
COMPLETION_WAITING_DOTS="true"

plugins=(git aliases git-commit )

source $ZSH/oh-my-zsh.sh


if [[ -n $SSH_CONNECTION ]]; then
  export EDITOR='vim'
else
  export EDITOR='mvim'
fi

alias realmdev="$REALMDESK_DIR/tools/development.sh"
alias rdbuild="$REALMDESK_DIR/tools/development.sh build"
alias rdstart="$REALMDESK_DIR/tools/development.sh start"
alias zshconfig="vim ~/.zshrc"
alias srczsh="source ~/.zshrc"
alias v="vim"
alias g="git"
alias d="docker"
alias dc="docker compose"
alias dcb="docker compose build"
alias dcub="docker compose up --build"
alias dcd="docker compose down"
alias c="clear"
alias l="ls -lah"
alias code="code ."
alias rd="cd $REALMDESK_DIR && code"
alias letsgo="rd && rdbuild && rdstart"
alias letsstop="rd && rdbuild && dcd"
alias aliases="cat ~/.zshrc | grep 'alias' "

