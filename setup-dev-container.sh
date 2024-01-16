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
  echo "Installing antigen"
  curl -L git.io/antigen > $HOME/.local/share/zsh/antigen.zsh
fi

if [! command -v nvm &> /dev/null]; then
  # Install node version manager
  echo "Installing nvm"
  curl -o- https://raw.githubusercontent.com/nvm-sh/nvm/master/install.sh | bash
fi

if [ ! -d $HOME/.tmux/plugins]; then
  # Install tmux plugin manager
  echo "Installing tpm"
  mkdir -p $HOME/.tmux/plugins
  git clone https://github.com/tmux-plugins/tpm $HOME/.tmux/plugins/tpm
fi
