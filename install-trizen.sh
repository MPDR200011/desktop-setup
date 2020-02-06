#!/bin/sh

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
