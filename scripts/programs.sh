#!bin/sh

#-----------------------------------------------#
# Timothy Price Automated Linux Desktop Install #
#-----------------------------------------------#

#---------------------#
# Installing programs #
#---------------------#

sudo add-apt-repository ppa:neovim-ppa/unstable -y
sudo apt update && upgrade

sudo apt install wget
sudo apt install curl
sudo apt install snapd
sudo apt install nvim
sudo apt install tmux
sudo apt install kitty
sudo apt install zsh
sudo apt install gnome-tweaks
sudo apt install git
sudo apt install code

#----------------------------------------#
# Installing applications via Snap Store #
#      https://snapcraft.io/store        #
#----------------------------------------#

sudo snap install steam
sudo snap install discord

#--------------------------#
# Programming dependencies # 
#--------------------------#

# python
sudo apt install python3
sudo apt install pip

# C
sudo apt install gcc

# Ocaml
bash -c "sh <(curl -fsSL https://opam.ocaml.org/install.sh)"
opam init
eval $(opam env)
opam install ocaml-lsp-server odoc ocamlformat utop

# dotnet
sudo apt-get install -y dotnet-sdk-8.0

# rust 
curl --proto '=https' --tlsv1.2 https://sh.rustup.rs -sSf | sh

#-----------------#
# NeoVim Packages #
#-----------------#

git clone --depth 1 https://github.com/wbthomason/packer.nvim\
 ~/.local/share/nvim/site/pack/packer/start/packer.nvim

#-------#
# Latex #
#-------#

wget http://mirror.ctan.org/systems/texlive/tlnet/install-tl-unx.tar.gz

tar -xvzf install-tl-unx.tar.gz
cd install-tl-* # TODO: replace * with the version gotten from the wget ^^
sudo ./install-tl

#------------------#
# Tmux sessionizer #
#------------------#

cargo install tmux-sessionizer
