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

# sudo pacman -S grep
grep -e "^[^#\s]" ./package-list.txt | xargs yay --noconfirm --batchinstall -S

./enable-services.sh

# Change shell to fish
chsh -s /bin/fish

# OMF install
echo "Installing OMF"
./install_omf.sh

# Install libgnome-keyring for git
cd /usr/share/git/credential/gnome-keyring
sudo make

