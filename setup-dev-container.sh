#!/bin/sh

sudo dnf copr enable atim/lazygit -y
sudo dnf install \
  kitty-terminfo \
  neovim \
  fzf \
  ripgrep \
  gcc \
  gcc-c++ \
  make \
  lazygit \
  tmux

mkdir -p $HOME/.local/share/zsh
if [ ! -f $HOME/.local/share/zsh/antigen.zsh ]; then
  curl -L git.io/antigen > $HOME/.local/share/zsh/antigen.zsh
fi

curl -o- https://raw.githubusercontent.com/nvm-sh/nvm/master/install.sh | bash
