# Omarchy environment (OMARCHY_PATH + PATH), needed even for non-interactive shells
[[ -r /usr/share/omarchy/default/bash/env-bootstrap ]] && source /usr/share/omarchy/default/bash/env-bootstrap

# If not running interactively, don't do anything else (leave this above the rc source)
[[ $- != *i* ]] && return

# All the default Omarchy aliases and functions
# (don't mess with these directly, just overwrite them here!)
source "$OMARCHY_PATH/default/bash/rc"

# Add your own exports, aliases, and functions here.
#
# Make an alias for invoking commands you use constantly
# alias p='python'

alias c="clear"
alias ..="cd .."
alias ...="cd ../.."
alias ....="cd ../../.."
alias cat="bat --theme=base16"
alias l="ls -CF"
alias ls="ls --color=auto"
alias ll="ls -alF -h --group-directories-first"
alias la="ls -A"
alias lla="ll --color -h --group-directories-first"

alias dirsize="du -sh"
alias grep="grep --color=auto"
alias fcfv="fc-cache -fv"
alias snvim="sudo -E -s nvim"
alias untar="tar -zxvf"

alias pminfo="yay -Si"
alias pmi="sudo pacman -S"
alias pmu="sudo pacman -R"
alias pml="yay -Q"
alias pmc="du -hd1 /var/cache/pacman"
alias yayc="du -hd1 ~/.cache/yay"
alias pmclean="sudo find /var/cache/pacman/pkg/ -mindepth 1 -type d -empty -delete; yay -Scc"
alias pmconf="sudo -E -s nvim /etc/pacman.conf"

alias gaa="git add ."
alias gcms="git commit -m"
alias gsmi="git submodule update --init --recursive"
alias gsmu="git pull --recurse-submodules; git submodule update --remote --merge"
alias gst="git status"



export GOPATH="$HOME/go"; export GOROOT="$HOME/.go"; export PATH="$GOPATH/bin:$PATH"; # g-install: do NOT edit, see https://github.com/stefanmaric/g

alias gvm="$GOPATH/bin/g"
