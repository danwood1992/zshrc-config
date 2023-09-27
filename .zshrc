
source /usr/share/zsh-autosuggestions/zsh-autosuggestions.zsh

export ZSH="$HOME/.oh-my-zsh"

ZSH_THEME="robbyrussell"

m# zstyle ':omz:update' mode reminder 

ENABLE_CORRECTION="true"


plugins=(git)

source $ZSH/oh-my-zsh.sh

alias ohmyzsh="mate ~/.oh-my-zsh"

PROMPT='%(?:%{%F{green}%}➜ :%{%F{red}%}➜ ) %{$fg[cyan]%}%~%{$reset_color%} $(git_prompt_info)'


function fcom() {
    local message="frontend($1): $2."
    git commit -m "$message"
}

function bcom() {
    local message="backend($1): $2."
    git commit -m "$message"
}

function dcom() {
    local message="docs: $1."
    git commit -m "$message"
}

function mcom() {
    local message="$1."
    git commit -m "$message"
}

function newbranch() {
    git checkout -b "$1"
}

function delbranch() {
    local branch="$1"
    git branch -d "$branch"
    git push origin --delete "$branch"
}

function pull() {
    git pull origin "$1"
}

function push() {
    git push origin "$1"
}

function branches() {
    git branch -a
}

function gitlog() {
    git log --oneline --graph --decorate --all
}





setopt histignorealldups sharehistory

bindkey -e

HISTSIZE=1000
SAVEHIST=1000
HISTFILE=~/.zsh_history

autoload -Uz compinit
compinit

zstyle ':completion:*' auto-description 'specify: %d'
zstyle ':completion:*' completer _expand _complete _correct _approximate
zstyle ':completion:*' format 'Completing %d'
zstyle ':completion:*' group-name ''
zstyle ':completion:*' menu select=2
eval "$(dircolors -b)"
zstyle ':completion:*:default' list-colors ${(s.:.)LS_COLORS}
zstyle ':completion:*' list-colors ''
zstyle ':completion:*' list-prompt %SAt %p: Hit TAB for more, or the character to insert%s
zstyle ':completion:*' matcher-list '' 'm:{a-z}={A-Z}' 'm:{a-zA-Z}={A-Za-z}' 'r:|[._-]=* r:|=* l:|=*'
zstyle ':completion:*' menu select=long
zstyle ':completion:*' select-prompt %SScrolling active: current selection at %p%s
zstyle ':completion:*' use-compctl false
zstyle ':completion:*' verbose true

zstyle ':completion:*:*:kill:*:processes' list-colors '=(#b) #([0-9]#)*=0=01;31'
zstyle ':completion:*:kill:*' command 'ps -u $USER -o pid,%cpu,tty,cputime,cmd'
