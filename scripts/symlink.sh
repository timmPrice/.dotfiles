#!/bin/bash

ln -sf ~/repos/.dotfiles/nvim ~/.config/nvim
# sync packer and update shout out plugin files!

ln -sf ~/repos/.dotfiles/zsh/.zshrc ~/
ln -sf ~/repos/.dotfiles/kitty ~/.config/kitty
ln ~/repos/.dotfiles/.tmux.conf ~/
ln ~/repos/.dotfiles/.gitconfig ~/
ln -sf ~/repos/.dotfiles/tms/ ~/.config
ln -sf ~repos/.dotfiles/fish ~/.config

# i3 window manager
# ln -sf ~/repos/.dotfiles/i3 ~/.config/i3

# Hyprland window manager
# ln -sf ~/repos/.dotfiles/hypr ~/.config/hypr
