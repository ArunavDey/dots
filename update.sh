#!/bin/sh

echo "Updating foreignpkglist"
pacman -Qme > ~/GitHub/dots/.foreignpkglist.txt

echo "Updating pkglist"
pacman -Qne > ~/GitHub/dots/.pkglist.txt

echo "Copying configs:"
echo -e "\txinit"
cp ~/.xinitrc ~/GitHub/dots/
echo -e "\tneovim"
cp -r ~/.config/nvim ~/GitHub/dots/
echo -e "\talacritty"
cp -r ~/.config/alacritty ~/GitHub/dots/
echo -e "\ti3"
cp -r ~/.config/i3 ~/GitHub/dots/
echo -e "\tpolybar"
cp -r ~/.config/polybar ~/GitHub/dots/
echo -e "\tzathura"
cp -r ~/.config/zathura ~/GitHub/dots/
echo -e "\ttmux"
cp -r ~/.config/tmux/tmux.conf ~/GitHub/dots/tmux/
echo -e "\tpicom"
cp -r ~/.config/picom ~/GitHub/dots/
echo -e "\tdunst"
cp -r ~/.config/dunst ~/GitHub/dots/

echo "Backing up configs to /mnt/hdd/dots"
mkdir /mnt/hdd/dots; cp -r ~/GitHub/dots/* /mnt/hdd/dots/

echo "Pushing changes to https://github.com/ArunavDey/dots"
git add -A
git commit -m "update dots"
git push

echo "Done!"
