#!/usr/bin/zsh 

### Install updates and necessary packages

sudo apt update && sudo apt upgrade

### Git email username setup

echo "Enter git email ID:"
read gitEmailID
git config --global user.email $gitEmailID
echo "Enter git user name:"
read gitUserName
git config --global user.name $gitUserName

### zsh setup

rm ~/.zshrc
dir_path=$(dirname $(realpath $0)
ln -s "$dir_path/.zshrc" ~/.zshrc
zsh_source(){
source ~/.zshrc; clear
}	
zsh_source

### Node Installation

curl -o- https://raw.githubusercontent.com/nvm-sh/nvm/v0.39.1/install.sh | zsh 
zsh_source
nvm install node
nvm use node
node -v


echo "🚀 Dev env Ready!!!"
