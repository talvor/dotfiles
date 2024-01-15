HISTFILE=~/.histfile
HISTSIZE=1000
SAVEHIST=1000

unamestr=$(uname -n)
if [[ "$unamestr" == 'fedora' ]]; then
  source $HOME/.local/share/zsh/host.zsh
elif [[ "$unamestr" == 'toolbox' ]]; then
  source $HOME/.local/share/zsh/dev.zsh
fi


