#!/bin/bsh

sudo add-apt-repository ppa:maveonair/helix-editor
sudo apt update
sudo apt install helix

ln -sf ~/.dotfiles/nvim ~/.config/nvim
ln -sf ~/.dotfiles/alacritty ~/.config/alacritty
ln ~/.dotfiles/.tmux.conf ~/
ln -sf ~/.dotfiles/helix ~/.config/helix
ln ~/.dotfiles/.bashrc ~/
ln ~/.dotfiles/.bash-completion ~/

sudo apt install sl

echo "👺  !symlinked .dotfiles! 👺"
