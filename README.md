# .dotfiles

This repository has the setup and dotfiles necessary for my personal setup.

## WSL 

### Inital

> Execute below commands in powershell with Administrator. 

**Step 1 - Enable the Windows Subsystem for Linux**
```
dism.exe /online /enable-feature /featurename:VirtualMachinePlatform /all /norestart
```
**Step 2 - Enable Virtual Machine feature**
```
dism.exe /online /enable-feature /featurename:VirtualMachinePlatform /all /norestart
```
**Step 3 - Set WSL 2 as your default version**
```
wsl --set-default-version 2
```
**Step 4 - Install Ubuntu (or any available distribution of choice)
```
wsl --install -d ubuntu
```
