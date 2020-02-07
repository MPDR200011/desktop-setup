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

for PACKAGE in $(grep -e "^[^#\s]" ./aur-package-list.txt);
do
    trizen -S $PACKAGE
done
