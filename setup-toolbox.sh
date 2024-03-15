#!/bin/bash

sudo dnf install -y \
	kitty-terminfo \
	neovim \
	fzf \
	ripgrep \
	gcc \
	gcc-c++ \
	make \
	tmux \
	zsh

mkdir -p $HOME/.local/share/zsh
if [ ! -f $HOME/.local/share/zsh/antigen.zsh ]; then
	echo "Installing antigen"
	curl -L git.io/antigen >$HOME/.local/share/zsh/antigen.zsh
fi

if ! [ -x "$(command -v nvm)" ]; then
	# Install node version manager
	echo "Installing nvm"
	curl -sS https://raw.githubusercontent.com/nvm-sh/nvm/master/install.sh | sh
fi

if ! [ -x "$(command -v starship)" ]; then
	# Install starship
	echo "Installing starship"
	curl -sS https://starship.rs/install.sh | sh
fi

mkdir -p $HOME/.tmux
if [ ! -d $HOME/.tmux/plugins ]; then
	# Install tmux plugin manager
	echo "Installing tpm"
	mkdir -p $HOME/.tmux/plugins
	git clone https://github.com/tmux-plugins/tpm $HOME/.tmux/plugins/tpm
fi
