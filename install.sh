#!/bin/bash

echo "Installing dotfiles"

source install/link.sh
source install/apt-get.sh
source install/vim.sh

echo "Creating vim dir"
mkdir ~/.vim-tmp

echo "Done"
