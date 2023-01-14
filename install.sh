#!/bin/bash

sudo add-apt-repository ppa:git-core/ppa -y
sudo apt update -y
sudo apt upgrade -y 
sudo apt install -y build-essential
sudo apt install -y zsh
sudo apt install -y git
sudo apt install -y tree
sudo apt install -y zip
sudo apt install -y ripgrep
curl -fsSL https://deb.nodesource.com/setup_lts.x | sudo -E bash -
sudo apt-get install -y nodejs

curl -sLo/tmp/win32yank.zip https://github.com/equalsraf/win32yank/releases/download/v0.0.4/win32yank-x64.zip
unzip -p /tmp/win32yank.zip win32yank.exe > /tmp/win32yank.exe
chmod +x /tmp/win32yank.exe
sudo mv /tmp/win32yank.exe /usr/local/bin/

curl -LJO https://github.com/neovim/neovim/releases/download/nightly/nvim-linux64.deb
sudo apt install ./nvim-linux64.deb -y

git clone --depth 1 https://github.com/junegunn/fzf.git ~/.fzf
~/.fzf/install
sh -c "$(curl -fsSL https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"
git clone https://github.com/zsh-users/zsh-autosuggestions ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-autosuggestions
