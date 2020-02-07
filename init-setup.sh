#!/bin/sh

echo "Installing packages."
grep -e "^[^#\s]" ./package-list.txt | xargs sudo pacman --noconfirm -S

echo "Enabling lightdm"
systemctl enable lightdm

# Intall zsh and oh-my-zsh
echo "Installing zsh."
sudo pacman --noconfirm -S zsh
sh -c "$(curl -fsSL https://raw.githubusercontent.com/robbyrussell/oh-my-zsh/master/tools/install.sh)"
chsh -s /bin/zsh
