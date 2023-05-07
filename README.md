# .dotfiles

This repository has the setup and dotfiles necessary for Pop_os! PDE (Personal Development Environment).

## Setup 

### **Step 1 - Install zsh and oh-My-Zsh**
```
sudo apt install zsh
sh -c "$(curl -fsSL https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"
```
> Press yes to make zsh default

### **Step 2 - Clone repo**
```
git clone https://github.com/Rakes-me/.dotfiles.git ~/.dotfiles
```
### **Step 3 - Run installation script**
> Note : The setup scripts installs softwares necessary for my development setup and replaces local dotfiles with the ones in this repo.
> feel free to fork and edit as needed.
```
cd ~/.dotfiles
./setup.sh
```
