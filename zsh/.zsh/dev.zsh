source $HOME/.local/share/zsh/antigen.zsh

# Load the oh-my-zsh's library.
antigen use oh-my-zsh

# Load Bundles 
antigen bundle git
antigen bundle node
antigen bundle npm
antigen bundle zsh-users/zsh-autosuggestions
antigen bundle command-not-found
antigen bundle zsh-users/zsh-syntax-highlighting

# Tell Antigen that you're done.
antigen apply

# Start starship prompt
eval "$(starship init zsh)"

# Aliases
alias dotfiles="nvim $HOME/git/dotfiles/"


export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"  # This loads nvm
[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"  # This loads nvm bash_completion
