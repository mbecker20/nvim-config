#!/bin/bash

# install some stuff
brew install neovim ripgrep lazygit rust-analyzer tmux

# clone tmux package manager
git clone https://github.com/tmux-plugins/tpm ~/.tmux/plugins/tpm

# set local .tmux.conf
cp ~/.config/nvim/.tmux.conf
