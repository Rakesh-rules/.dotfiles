#!/usr/bin/zsh 

### Install updates and necessary packages

sudo add-apt-repository ppa:neovim-ppa/unstable
sudo add-apt-repository ppa:lazygit-team/release
sudo apt update && sudo apt upgrade
sudo apt install build-essential neovim neofetch unzip zip fzf lazygit python3-neovim python3-pip

### zsh setup

rm ~/.zshrc
dir_path=$(dirname $(realpath $0))
ln -s "$dir_path/.zshrc" ~/.zshrc
zsh_source(){
source ~/.zshrc; clear
}	
zsh_source

### CUDA 
wget https://developer.download.nvidia.com/compute/cuda/repos/wsl-ubuntu/x86_64/cuda-wsl-ubuntu.pin
sudo mv cuda-wsl-ubuntu.pin /etc/apt/preferences.d/cuda-repository-pin-600
wget https://developer.download.nvidia.com/compute/cuda/11.4.0/local_installers/cuda-repo-wsl-ubuntu-11-4-local_11.4.0-1_amd64.deb
sudo dpkg -i cuda-repo-wsl-ubuntu-11-4-local_11.4.0-1_amd64.deb
sudo apt-key add /var/cuda-repo-wsl-ubuntu-11-4-local/7fa2af80.pub
sudo apt-get update
sudo apt-get -y install cuda
rm cuda-repo-wsl-ubuntu-11-4-local_11.4.0-1_amd64.deb

### Conda and Pytorch install
wget https://repo.anaconda.com/miniconda/Miniconda3-latest-Linux-x86_64.sh 
bash Miniconda3-latest-Linux-x86_64.sh
rm Miniconda3-latest-Linux-x86_64.sh
zsh_source
conda config --set auto_activate_base false
zsh_source
conda create --name torch python=3.8 -y
conda activate torch
conda install ipykernel
conda install nb_conda # jupyter support to new environment
conda install pytorch torchvision torchtext cudatoolkit -c pytorch # pytorch install
conda install tqdm matplotlib pandas spacy
# python -m ipykernel install --user --name pytorch --display-name "Python 3.7 (pytorch)"

### Node Installation

curl -o- https://raw.githubusercontent.com/nvm-sh/nvm/v0.39.1/install.sh | zsh 
zsh_source
nvm install --lts
nvm use --lts
node -v
zsh_source

## linter and formatter
npm install -g prettier
pip install --upgrade autopep8
pip install flake8

### Astro Vim setup (This one has plenty of Vim conf and I'm feeling lazy to do it up on my own)
git clone https://github.com/kabinspace/AstroVim ~/.config/nvim
nvim +PackerSync
ln -s ~/.dotfiles/user ~/.config/nvim/lua/user
zsh_source
nvim -c ":LspInstall html cssls tsserver pyright prosemd_lsp eslint"
nvim -c ":TSInstall html css javascript markdown tsx typescript"

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
