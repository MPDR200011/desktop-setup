#!/bin/sh


echo "Installing packages."
cat ./package-list.txt | xargs sudo pacman --noconfirm -S

echo "Enabling lightdm"
systemctl enable lightdm

# Intall zsh and oh-my-zsh
echo "Installing zsh."
sudo pacman --noconfirm -S zsh
sh -c "$(curl -fsSL https://raw.githubusercontent.com/robbyrussell/oh-my-zsh/master/tools/install.sh)"
chsh -s /bin/zsh

# trizen installation
echo "Installing trizen."
git clone https://aur.archlinux.org/trizen.git
cd trizen
makepkg -si
cd ..

rm -rf trizen

echo "Installing AUR packages."
trizen -S trizen
cat ./aur-package-list.txt | xargs trizen -S

# Installing dein plugin manager for neovim
echo "Installing dein package manager for neovim."
curl https://raw.githubusercontent.com/Shougo/dein.vim/master/bin/installer.sh > installer.sh
sh ./installer.sh ~/.cache/dein

# VsCode Extansions
echo "Installing vscode extensions."
cat ./code-extensions.txt | xargs -L 1 code --install-extension

git clone https://github.com/MPDR200011/dotfiles.git/ ~/

./exec-symlinks.sh
