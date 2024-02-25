#!/bin/bsh

ln -sf ~/.dotfiles/nvim ~/.config/nvim
ln -sf ~/.dotfiles/alacritty ~/.config/alacritty
ln ~/.dotfiles/.tmux.conf ~/

sudo apt install sl

echo "👺  !symlinked .dotfiles! 👺"
