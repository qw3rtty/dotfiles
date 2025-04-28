#!/bin/bash

function get_package_manager() {
  which apk &> /dev/null
  if [ $? -eq 0 ]; then
	echo $(which apk) add # Alpine Linux
  else
	echo $(which apt-get) install # Debian based linux distros
  fi
}

function install {
  which $1 &> /dev/null

  if [ $? -ne 0 ]; then
    echo "Installing: ${1}..."
    $(get_package_manager) $1
  else
    echo "Already installed: ${1}"
  fi
}


install git
install vim
install neovim
install ripgrep
install tmux
install ranger
install go
install newsboat
install aerc


# Install neovim package manager packer.nvim
git clone --depth 1 https://github.com/wbthomason/packer.nvim\
 ~/.local/share/nvim/site/pack/packer/start/packer.nvim

# Start neovim to sync/install all packages
vim "+:PackerSync"