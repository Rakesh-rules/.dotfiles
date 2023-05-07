#!/usr/bin/zsh 

## Install updates

sudo apt update -y && sudo apt upgrade -y

## zsh setup

rm ~/.zshrc
dir_path=$(dirname $(realpath $0))
ln -s "$dir_path/.zshrc" ~/.zshrc
zsh_source(){
source ~/.zshrc; clear
}	
zsh_source

## Conda installation
wget https://repo.anaconda.com/miniconda/Miniconda3-latest-Linux-x86_64.sh 
bash Miniconda3-latest-Linux-x86_64.sh
rm Miniconda3-latest-Linux-x86_64.sh
zsh_source
conda config --set auto_activate_base false
zsh_source

## Install homebrew
/bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"
zsh_source

## Install using nvm and node
brew install -q nvm
mkdir ~/.nvm
zsh_source
nvm install --lts
nvm use --lts
node -v
zsh_source

### Npm packages
npm install -g @angular/cli

# Homebrew installs
brew install neofetch

# Flatpak installs
flatpak -y update
flatpak -y install org.videolan.VLC \
    com.visualstudio.code \
    com.brave.Browser \
    com.mattjakeman.ExtensionManager \
    org.qbittorrent.qBittorrent \
    com.google.Chrome \
    org.gimp.GIMP \
    com.obsproject.Studio \
    com.getpostman.Postman \
    com.github.tchx84.Flatseal

## Need to setup automatic extension installation
# 1. https://extensions.gnome.org//extension/779/clipboard-indicator/
# 2. https://extensions.gnome.org//extension/4968/lightdark-theme-switcher/

### Git email username setup

git config --global credential.helper store
echo "Enter git email ID:"
read gitEmailID
git config --global user.email $gitEmailID
echo "Enter git user name:"
read gitUserName
git config --global user.name $gitUserName


### Cleanup

sudo apt autoremove
clear
neofetch

echo "🚀 Dev env Ready!!!"
