#!/bin/sh

echo "Updating foreignpkglist"
pacman -Qme > ./dots/.foreignpkglist.txt

echo "Updating pkglist"
pacman -Qne > ./dots/.pkglist.txt

echo "Copying configs:"
echo -e "\txinit"
cp ~/.xinitrc ./dots/
echo -e "\tneovim"
cp -r ~/.config/nvim ./dots/
echo -e "\talacritty"
cp -r ~/.config/alacritty ./dots/
echo -e "\ti3"
cp -r ~/.config/i3 ./dots/
echo -e "\tpolybar"
cp -r ~/.config/polybar ./dots/
echo -e "\tzathura"
cp -r ~/.config/zathura ./dots/
echo -e "\ttmux"
cp -r ~/.config/tmux/tmux.conf ./dots/tmux/
echo -e "\tpicom"
cp -r ~/.config/picom ./dots/
echo -e "\tdunst"
cp -r ~/.config/dunst ./dots/

echo "Backing up configs to /mnt/hdd/dots"
sudo mkdir /mnt/hdd/dots; cp -r ./dots/* /mnt/hdd/dots/

echo "Pushing changes to https://github.com/ArunavDey/dots"
git add -A
git commit -m "update dots"
git push

echo "Done!"
