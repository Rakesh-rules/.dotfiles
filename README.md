# .dotfiles

This repository has the setup and dotfiles necessary for my wsl PDE (Personal Development Environment).

## WSL 

### Inital

<!-- > Update windows and Execute below commands in CMD/powershell with Administrator. 

#### **Step 1 - Update WSL**
```
wsl --update
``` -->

#### **Step 1 - Enable WSL features and sets wSL2 as default**
```
wsl --install
```
> Reboot system

<!-- **Step 3 - Install linux**
```
wsl --install -d Ubuntu
``` -->
> After Ubuntu opens. Setup username, password and run below commands.

#### **Step 2 - Clone repo**
```
git clone https://github.com/Rakesh-rules/.dotfiles.git
```

#### **Step 3 - Install zsh**
```
sudo apt install zsh
```

#### **Step 4 - Make zsh default**

```
sh -c "$(curl -fsSL https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"
```

**Step 5 - Run installation script**
> Note : The setup scripts installs softwares necessary for my development setup and replaces local dotfiles with the ones in this repo.
> feel free to fork and edit as needed.
```
cd .dotfiles
./setup.sh
```

## Troubleshoot

* If you're like me and messed up your system with `rm -rf /` 😉
 or need a fresh start in already installed distro, use below command and then start from [step3](#Step-3-\--Install-linux-distro).
 ```
 wsl --unregister Ubuntu
 ```

