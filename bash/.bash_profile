export EDITOR="$(which vim)"

alias ls="ls -Gh --color=auto --group-directories-first"

alias g=git

alias a=atom
alias v=vim

alias unzip=dtrx

export RVM_DIR="/home/jacob/.rvm"
[[ -s "$RVM_DIR/scripts/rvm" ]] && source "$RVM_DIR/scripts/rvm"

export NVM_DIR="/home/jacob/.nvm"
[[ -s "$NVM_DIR/nvm.sh" ]] && source "$NVM_DIR/nvm.sh"

alias resource="source $HOME/.zshrc"
