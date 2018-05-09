export ZSH=/home/nicolas/.oh-my-zsh

ZSH_THEME="robbyrussell"

plugins=(
  git z pass
)

source $ZSH/oh-my-zsh.sh

source ~/.local/bin/env-gen.sh

# aliases
alias o=xdg-open
