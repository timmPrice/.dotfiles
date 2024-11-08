#!/bin/sh

#---------------------------------------------------------------------------------------------------------------------------------
# I always forget how to make ssh keys when I set up a new computer so here is a simple script for github auth keys 
# https://docs.github.com/en/authentication/connecting-to-github-with-ssh/generating-a-new-ssh-key-and-adding-it-to-the-ssh-agent
#---------------------------------------------------------------------------------------------------------------------------------

mkdir $HOME/.ssh
ssh-keygen -t ed25519 -C "timmprice6@gmail.com"
# add error handling for ssh client not running eval "$(ssh-agent -s)"
ssh-add ~/.ssh/id_rsa

echo !! ssh public key !!
cat ~/.ssh/id_rsa.pub

git config --global user.email "timmPrice6@gmail.com" 
git config --global user.name "timmPrice" 
