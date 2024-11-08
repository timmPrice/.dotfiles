#!bin/sh

#-----------------------------------------------#
# Timothy Price Automated Linux Desktop Install #
#-----------------------------------------------#

# some ideas about rewriting in python or js to make for exmaple all packages in an array

# sanity check

CURR_OS=$(uname)

if [[ "$CURR_OS" != *"Linux"* ]]; then
    echo "ERROR --> Incorrect OS for this target!"
    exit
fi

sudo add-apt-repository ppa:neovim-ppa/unstable -y
sudo apt update && upgrade

# cli tools
sudo apt install wget
sudo apt install curl
sudo ap install snapd

sudo apt install tmux
sudo apt install neovim
sudo apt install kitty
sudo apt install zsh
sudo apt install discord
sudo apt install steam
sudo apt install gnome-tweaks

# programming
# install go
# install cargo
# install ocaml
sudo apt install python3 
sudo apt install pip

# js/ts -- TODO -- add jsr and deno tools for js
sudo apt install npm
curl -o- https://raw.githubusercontent.com/nvm-sh/nvm/v0.39.7/install.sh | bash
nvm install 20
node -v
npm -v

npm install -D typescript

#dotnet

sudo apt-get update && \
  sudo apt-get install -y dotnet-sdk-8.0

# misc tools
sudo snap install foliate
sudo snap install obsidian

echo "🍜 finished installing dependencies 🍜"

#--------------------------#
#     Symlinking Files     # 
#--------------------------#

ln -sf ~/repos/.dotfiles/nvim ~/.config/nvim
# sync packer and update shout out plugin files!

ln ~/repos/.dotfiles/zsh/.zshrc ~/
ln -sf ~/repos/.dotfiles/zsh/.oh-my-zsh ~/

# i3 window manager
# ln -sf ~/repos/.dotfiles/i3 ~/.config/i3

# Hyprland window manager
# ln -sf ~/repos/.dotfiles/hypr ~/.config/hypr

ln -sf ~/repos/.dotfiles/kitty ~/.config/kitty
ln ~/repos/.dotilfes/.tmux.conf ~/
ln ~/repos/.dotfiles/.gitconfig ~/

echo "🍜 finished symlinked config files 🍜"

# packer for nvim
git clone --depth 1 https://github.com/wbthomason/packer.nvim\
 ~/.local/share/nvim/site/pack/packer/start/packer.nvim

#-------------#
#     zsh     #
#-------------#

chsh -s $(which zsh)
sudo update-alternatives --config x-terminal-emulator

# git clone https://github.com/zsh-users/zsh-syntax-highlighting.git ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-syntax-highlighting
# git clone https://github.com/zsh-users/zsh-autosuggestions ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-autosuggestions

#-------------#
#     QMK     # 
#-------------#

python3 -m pip install qmk
export QMK_HOME='~/qmk_firmware' # Optional, set the location for `qmk_firmware`
qmk setup  # This will clone `qmk/qmk_firmware` and optionally set up your build environment

#---------------#
#     Fonts     #
#---------------#

wget http://mirror.ctan.org/systems/texlive/tlnet/install-tl-unx.tar.gz

tar -xvzf install-tl-unx.tar.gz
cd install-tl-* # TODO: replace * with the version gotten from the wget ^^
sudo ./install-tl

#-------------#
#     Git     #
#-------------#

git config --global user.email "timmPrice6@gmail.com" 
git config --global user.name "timmPrice" 
zsh ssh.sh
