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

### zsh Installation and setup

sh -c "$(curl -fsSL https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"
clear
rm ~/.zshrc
dir_path=$(dirname $0)
ln -s "$dir_path/.zshrc" ~/.zshrc
Block_comment
zsh_source(){
source ~/.zshrc; clear
}	

### Node Installation

curl -o- https://raw.githubusercontent.com/nvm-sh/nvm/v0.39.1/install.sh | zsh 
zsh_source
nvm install node
nvm use node
node -v


echo "🚀 Dev env Ready!!!"
