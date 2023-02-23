#!/bin/bash -e

alias egrep='egrep --color=auto'
alias fgrep='fgrep --color=auto'
alias grep='grep --color=auto'
alias l='ls -CF'
alias la='ls -A'
alias ll='ls -alF'
alias ls='ls --color=auto'

source /verbis/functions.sh

verbis_defaults_main
verbis_defaults_rust

verbis_symlink_cache_dir git

stow -t ~ gitconfig

# If Samply.Beam not yet present, clone the develop branch
verbis_clone github.com:samply/beam develop

# Same for the Bridgehead -- but here, clone the default branch
verbis_clone github.com:samply/bridgehead
