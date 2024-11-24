!#/bin/bash

curl -sSL https://get.haskellstack.org/ | sh

mkdir ~/.config/kmonad/
ln ~/repos/.dotfiles/kmonad/hhkb.kbd ~/.config/kmonad/
sudo cp -r ~/repos/.dotfiles/kmonad/kmonad.service /etc/systemd/system/

git clone git@github.com:kmonad/kmonad.git ~/repos/
stack build ~repos/kmonad
sudo cp -r ~/repos/.dotfiles/kmonad/kmonad /usr/local/bin/

chmod sudo chmod 644 /etc/systemd/system/kmonad.service


sudo systemctl enable kmonad.service
sudo systemctl start kmonad.service

sudo systemctl daemon-reload
