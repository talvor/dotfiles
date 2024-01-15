<h1 align="center">dotfiles</h1>

My dotfiles for Fedora Sericea

## Install dependencies

```shell
rpm-ostree install \
  kitty \
  stow \
  mako \
  nwg-launchers \
  brightnessctl
```

## Setup dev toolbox

1. Create toolbox
   ```shell
   toolbox create dev
   ```
2. Install dependencies in toolbox
   ```shell
   toolbox enter dev
   sudo dnf copr enable atim/lazygit -y
   sudo dnf install \
     kitty-terminfo \
     neovim \
     fzf \
     ripgrep \
     gcc \
     gcc-c++ \
     make \
     lazygit
```

## Install dotfiles

1. Clone this repo:

   ```shell
   git clone https://github.com/talvor/dotfiles.git $HOME/.dotfiles
   cd $HOME/.dotfiles
   ```

2. Uncomment the lines in [`install.sh`](./install.sh) of dotfiles you want to install
3. Execute `./install.sh`.
   Make sure that you run the script in the main dotfiles directory, i.e `cd ~/.dotfiles` first.

## Requirements

- [stow](https://www.gnu.org/software/stow/)
- [kitty](https://github.com/kovidgoyal/kitty)
- [mako](https://github.com/emersion/mako)
- [nwg-launchers](https://github.com/nwg-piotr/nwg-launchers)
- [sway](https://github.com/swaywm/sway)
- [waybar](https://github.com/Alexays/Waybar)

