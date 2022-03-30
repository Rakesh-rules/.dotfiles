#!/usr/bin/bash

echo "Installing updates"
sudo apt update && sudo apt upgrade
echo "Enter git email ID:"
read gitEmailID
git config --global user.email $gitEmailID
echo "Enter git user name:"
read gitUserName
git config --global user.name $gitUserName
