#!/bin/bash -e

source /verbis/functions.sh

verbis_defaults_main
verbis_defaults_rust

verbis_symlink_cache_dir git

stow -t ~ myhomedir

# If Samply.Beam not yet present, clone the develop branch
verbis_clone github.com:samply/beam develop

# Same for the Bridgehead -- but here, clone the default branch
verbis_clone github.com:samply/bridgehead
