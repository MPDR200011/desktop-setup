#!/bin/sh

# Installing plug.vimdein plugin manager for neovim
echo "Installing plug.vim"
curl -fLo ~/.vim/autoload/plug.vim --create-dirs \
    https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
