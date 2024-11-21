#!bin/sh

#-----------------------------------------------#
# Timothy Price Automated Linux Desktop Install #
#-----------------------------------------------#

#---------------------#
# Installing programs #
#---------------------#

programs=(
    wget
    curl
    snapd
    snap
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
    cargo
)

if grep -q "Pop!_OS" /etc/os-release; then
    sudo add-apt-repository ppa:neovim-ppa/unstable -y
    sudo apt update && upgrade
    sudo apt install "${programs[@]}"

elif grep -q "Ubuntu\|Debian" /etc/os-release; then
    sudo add-apt-repository ppa:neovim-ppa/unstable -y
    sudo apt update && upgrade
    sudo apt install "${programs[@]}"

elif grep -q "Fedora" /etc/redhat-release; then
    sudo dnf update
    sudo dnf install "${programs[@]}"
fi


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
# bash -c "sh <(curl -fsSL https://opam.ocaml.org/install.sh)"
# opam init
# eval $(opam env)
# opam install ocaml-lsp-server odoc ocamlformat utop

# dotnet
# sudo apt-get install -y dotnet-sdk-8.0
curl --proto '=https' --tlsv1.2 https://sh.rustup.rs -sSf | sh

#-----------------#
# NeoVim Packages #
#-----------------#

# git clone https://github.com/wbthomason/packer.nvim "$env:LOCALAPPDATA\nvim-data\site\pack\packer\start\packer.nvim"

#-------#
# Latex #
#-------#

# wget http://mirror.ctan.org/systems/texlive/tlnet/install-tl-unx.tar.gz

# tar -xvzf install-tl-unx.tar.gz
# sudo ./install-tl

#------------------#
# Tmux sessionizer #
#------------------#

# cargo install tmux-sessionizer
