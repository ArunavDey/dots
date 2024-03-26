#!/bin/sh

echo "Updating foreignpkglist"
pacman -Qme > .foreignpkglist.txt

echo "Updating pkglist"
pacman -Qne > .pkglist.txt

echo "Copying configs:"
echo -e "\txinit"
cp ~/.xinitrc ./
echo -e "\tneovim"
cp -r ~/.config/nvim ./
echo -e "\tkitty"
cp -r ~/.config/kitty ./
echo -e "\tzathura"
cp -r ~/.config/zathura ./
echo -e "\ttmux"
cp -r ~/.config/tmux/tmux.conf ./tmux/

echo "Backing up configs to /mnt/hdd/dots"
sudo mkdir /mnt/hdd/dots; cp -r ./* /mnt/hdd/dots/

echo "Done!"
