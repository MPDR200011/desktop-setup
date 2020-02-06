#!/bin/sh

# Installing dein plugin manager for neovim
echo "Installing dein package manager for neovim."
curl https://raw.githubusercontent.com/Shougo/dein.vim/master/bin/installer.sh > installer.sh
sh ./installer.sh $HOME/.cache/dein
rm installer.sh