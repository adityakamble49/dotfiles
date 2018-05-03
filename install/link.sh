#!/bin/bash

DOTFILES=$HOME/.dotfiles

# link dotfiles to home dirctory
for file in $(find $DOTFILES -name '*.symlink')
do
    filename=$(basename "$file")
    dot_filename=~/.${filename%.*}
    ln -s $file $dot_filename
done
