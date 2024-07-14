#!/bin/bsh

# adding and installing helix editor
sudo add-apt-repository ppa:maveonair/helix-editor
sudo apt update
sudo apt install helix
rm -r ~/.config/helix

# symlinking .config files
ln -sf ~/repos/.dotfiles/nvim ~/.config/nvim
ln -sf ~/repos/.dotfiles/alacritty ~/.config/alacritty
ln ~/repos/.dotfiles/.tmux.conf ~/
ln -sf ~/repos/.dotfiles/helix ~/.config/helix
ln ~/repos/.dotfiles/.bashrc ~/
cp ~/repos/.dotfiles/.bash-completion ~/

#goofy ahh program
sudo apt install sl

echo "🍜 !symlinked .dotfiles! 🍜"
