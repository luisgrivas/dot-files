#!bin/bash
set -e 

sudo apt update -y
sudo apt upgrade -y
sudo apt install -y curl git unzip
sudo apt install -y build-essential pkg-config autoconf

# zsh
sudo apt install zsh

# fastfetch
sudo add-apt-repository ppa:zhangsongcui3371/fastfetch
sudo apt update -y
sudo apt install -y fastfetch

# ripgrep
sudo apt install -y ripgrep 

# bat
sudo apt install -y bat 

# eza 
sudo apt install -y eza 

# zoxide
sudo apt install -y btop

# fd
sudo apt install -y fd-find

# tldr
sudo apt instal tldr

# just
# https://github.com/casey/just
apt install just

# fzf
#https://github.com/junegunn/fzf
git clone --depth 1 https://github.com/junegunn/fzf.git ~/.fzf
~/.fzf/install

# fzf-tab
# https://github.com/Aloxaf/fzf-tab?tab=readme-ov-file#install
git clone https://github.com/Aloxaf/fzf-tab ~/.fzf-tab

# the fuck
# https://github.com/nvbn/thefuck?tab=readme-ov-file#installation
pip install thefuck

# px 
# https://github.com/walles/px
sudo apt install px

# jq
# https://jqlang.github.io/jq/download/
sudo apt-get install jq

# starship 
# https://starship.rs/installing/
curl -sS https://starship.rs/install.sh | sh

# zsh plugins
# syntax highlighting
# https://github.com/zsh-users/zsh-syntax-highlighting/blob/master/INSTALL.md
sudo apt install zsh-syntax-highlighting

# autosuggestions
sudo apt install zsh-autosuggestions

#completions
# https://github.com/zsh-users/zsh-completions?tab=readme-ov-file
echo 'deb http://download.opensuse.org/repositories/shells:/zsh-users:/zsh-completions/xUbuntu_22.04/ /' | sudo tee /etc/apt/sources.list.d/shells:zsh-users:zsh-completions.list
curl -fsSL https://download.opensuse.org/repositories/shells:zsh-users:zsh-completions/xUbuntu_22.04/Release.key | gpg --dearmor | sudo tee /etc/apt/trusted.gpg.d/shells_zsh-users_zsh-completions.gpg > /dev/null
sudo apt update
sudo apt install zsh-completions

# Neovim 
cd /tmp
wget -O nvim.tar.gz "https://github.com/neovim/neovim/releases/latest/download/nvim-linux64.tar.gz"
tar -xf nvim.tar.gz
sudo install nvim-linux64/bin/nvim /usr/local/bin/nvim
sudo cp -R nvim-linux64/lib /usr/local/
sudo cp -R nvim-linux64/share /usr/local/
rm -rf nvim-linux64 nvim.tar.gz
cd -

# zellij
cd /tmp
wget -O zellij.tar.gz "https://github.com/zellij-org/zellij/releases/latest/download/zellij-x86_64-unknown-linux-musl.tar.gz"
tar -xf zellij.tar.gz zellij
sudo install zellij /usr/local/bin
rm zellij.tar.gz zellij
cd -
