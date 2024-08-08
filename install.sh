#!bin/sh

#-----------------------------------------------
# Timothy Price Automated Linux Desktop Install
#-----------------------------------------------

# sanity check

CURR_OS=$(uname)

if [[ "$CURR_OS" != *"Linux"* ]]; then
    echo "ERROR --> Incorrect OS for this target!"
    exit
fi

sudo apt update && upgrade

sudo apt install tmux
sudo apt install neovim
sudo apt install i3
sudo apt install kitty
sudo apt install zsh
sudo apt install discord
sudo apt install steam
sudo apt install foliate

# cli tools
sudo apt install wget
sudo apt install curl

# programming
# install go
# install cargo
# install ocaml
sudo apt install python3 
sudo apt install pip

#dotnet

echo "🍜 finished installing dependencies 🍜"

#-----------------------------------------------
# 		Symlinking Files 
#-----------------------------------------------

ln -sf ~/repos/.dotfiles/nvim ~/.config/nvim
ln ~/repos/.dotfiles/zsh/.zshrc ~/
ln -sf ~/repos/.dotfiles/zsh/.oh-my-zsh ~/.zshrc

# i3 window manager
# ln -sf ~/repos/.dotfiles/i3 ~/.config/i3

# Hyprland window manager
# ln -sf ~/repos/.dotfiles/hypr ~/.config/hypr

ln -sf ~/repos/.dotfiles/kitty ~/.config/kitty
ln ~/repos/.dotilfes/.tmux.conf ~/

echo "🍜 finished symlinked config files 🍜"

#-----------------------------------------------
# 		      zsh
#-----------------------------------------------

chsh -s $(which zsh)
sudo update-alternatives --config x-terminal-emulator

#-----------------------------------------------
# 		      QMK 
#-----------------------------------------------

#-----------------------------------------------
# 		     Fonts
#-----------------------------------------------

#-----------------------------------------------
# 		      Git
#-----------------------------------------------

git config --global user.email "timmPrice6@gmail.com" 
git config --global user.name "timmPrice" 
zsh ssh.sh
