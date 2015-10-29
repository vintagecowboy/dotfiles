#!/bin/bash

# bash_profile

# set 256 color profile where possible
if [[ $COLORTERM == gnome-* && $TERM == xterm ]] && infocmp gnome-256color >/dev/null 2>&1; then
    export TERM=gnome-256color
  elif infocmp xterm-256color >/dev/null 2>&1; then
    export TERM=xterm-256color
fi

load_dotfiles() {
    declare -a files=(
    $HOME/.bash_exports # Exports
    $HOME/.bash_aliases 
    $HOME/.bash_prompt # Custom bash prompt
    $HOME/.bash_paths
    )
    # if these files are readable, source them
    for index in ${!files[*]}
    do
        if [[ -r ${files[$index]} ]]; then
            source ${files[$index]}
        fi
        done
}

load_dotfiles
unset load_dotfiles