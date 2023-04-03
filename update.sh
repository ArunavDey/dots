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
echo -e "\talacritty"
cp -r ~/.config/alacritty ./
echo -e "\ti3"
cp -r ~/.config/i3 ./
echo -e "\tpolybar"
cp -r ~/.config/polybar ./
echo -e "\tzathura"
cp -r ~/.config/zathura ./
echo -e "\ttmux"
cp -r ~/.config/tmux ./
echo -e "\tpicom"
cp -r ~/.config/picom ./
echo -e "\tdunst"
cp -r ~/.config/dunst ./

echo "Backing up configs to /mnt/hdd/dots"
sudo mkdir /mnt/hdd/dots; cp -r ./* /mnt/hdd/dots/

echo "Pushing changes to https://github.com/ArunavDey/dots"
git add -A
git commit -m "update dots"
git push

echo "Done!"
