#!/bin/bsh

ln -sf ~/.dotfiles/nvim ~/.config/nvim
ln -sf ~/.dotfiles/alacritty ~/.config/alacritty
ln ~/.dotfiles/.tmux.conf ~/
ln -sf ~/.dotfiles/helix ~/.config/helix

sudo apt install sl

echo "👺  !symlinked .dotfiles! 👺"
