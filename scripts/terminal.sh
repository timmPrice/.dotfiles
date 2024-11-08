#!/bin/bash

chsh -s $(which zsh)
sudo update-alternatives --config x-terminal-emulator

# this runs before symlinking so pick the option that remove the zshrc
sh -c "$(curl -fsSL https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"
git clone https://github.com/zsh-users/zsh-autosuggestions ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-autosuggestions

