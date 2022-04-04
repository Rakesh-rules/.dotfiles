# .dotfiles

This repository has the setup and dotfiles necessary for my personal setup.

## WSL 

### Inital

> Update windows and Execute below commands in powershell with Administrator. 

**Step 1 - Update WSL**
```
wsl --update
```

**Step 2 - Enable WSL features and sets wSL2 as default**
```
wsl --install
```
> Reboot system

**Step 3 - Install linux distro**
```
wsl --install -d Ubuntu
```

**Step 4 - Clone repo**
```
git clone https://github.com/Rakesh-rules/.dotfiles.git
```

**Step 5 - Install zsh**
```
sudo apt install zsh
```

**Step 6 - Make zsh default**

```
sh -c "$(curl -fsSL https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"
```

**Step 6 - Run installation script**
> Note : The setup scripts installs softwares necessary for my development setup and replaces local dotfiles with the ones in this repo.
> feel free to fork and edit as needed.
```
cd .dotfiles
./setup.sh
```
