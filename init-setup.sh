#!/bin/sh
echo "Installing yay"
sudo pacman -S git
git clone https://aur.archlinux.org/yay.git
cd yay
makepkg -si
cd ..
rm -rf yay

echo "Installing packages."
yay --noconfirm -S yay

grep -e "^[^#\s]" ./package-list.txt | \ 
    xargs yay --noconfirm --batchinstall -S

echo "Enabling lightdm"
systemctl enable lightdm

#Cahnge shell to fish
chsh -s /bin/fish

# OMF install
curl -L https://get.oh-my.fish | fish
omf install https://github.com/jhillyerd/plugin-git
