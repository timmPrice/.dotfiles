#!/bin/sh

# configuring ssh keys and git username and email

mkdir $HOME/.ssh
ssh-keygen -t rsa -b 4096 -C timmprice6@gmail.com
# add error handling for ssh client not running eval "$(ssh-agent -s)"
ssh-add ~/.ssh/id_rsa

echo !! ssh public key !!
cat ~/.ssh/id_rsa.pub


