#!/bin/sh

if lolcat --help > /dev/null 2>&1; then
    echo "  lolcat already installed"
else
    echo "DO: install lolcat from https://github.com/jaseg/lolcat"
fi
if fzf --version > /dev/null 2>&1; then
    echo "  fzf already installed"
else
    echo "DO: install fzf from https://github.com/junegunn/fzf" 
fi
if cowsay hi > /dev/null 2>&1; then
    echo "  cowsay already installed"
    files="$(cowsay -l)"
    if test "${files#*vader-koala}" != "$files"; then
        echo "  extra cowfiles already installed"
    else
        echo "DO: install extra cowsay files from https://github.com/paulkaefer/cowsay-files" 
    fi
else
    echo "DO: install cowsay from your package manager"
fi
