#!bin/sh

#-----------------------------------------------#
# Timothy Price Automated Linux Desktop Install #
#-----------------------------------------------#

#---------------------#
# Installing programs #
#---------------------#

sudo add-apt-repository ppa:neovim-ppa/unstable -y
sudo apt update && upgrade

apt_programs=(
    wget
    curl
    snapd
    nvim
    tmux
    kitty
    zsh
    gnome-tweaks
    git
    code
    python3
    pip
    gcc
)

sudo apt install "${apt_programs[@]}"

#----------------------------------------#
# Installing applications via Snap Store #
#      https://snapcraft.io/store        #
#----------------------------------------#

sudo snap install steam
sudo snap install discord

#--------------------------#
# Programming dependencies # 
#--------------------------#

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
