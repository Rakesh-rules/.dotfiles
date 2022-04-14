#!/usr/bin/zsh 

### Install updates and necessary packages

sudo add-apt-repository ppa:neovim-ppa/stable
sudo apt update && sudo apt upgrade
sudo apt install build-essential neovim neofetch unzip zip fzf

### Astro Vim setup (This one has plenty of Vim conf and I'm feeling lazy it up on my own)
git clone https://github.com/kabinspace/AstroVim ~/.config/nvim
nvim +PackerSync
ln -s ~/.dotfiles/user ~/.config/nvim/lua/user
nvim -c ":LspInstall html cssls tsserver pyright"
nvim -c ":TSInstall html css javascript markdown tsx typescript"

### Git email username setup

git config --global credential.helper store
echo "Enter git email ID:"
read gitEmailID
git config --global user.email $gitEmailID
echo "Enter git user name:"
read gitUserName
git config --global user.name $gitUserName

### zsh setup

rm ~/.zshrc
dir_path=$(dirname $(realpath $0))
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

### Cleanup

sudo apt autoremove

echo "🚀 Dev env Ready!!!"
