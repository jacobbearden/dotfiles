export EDITOR="$(which vim)"

export PATH="$PATH:$HOME/.bin"

alias g=git
alias ls="ls -G"
alias a=atom
alias v=vim

alias unzip=dtrx

if [ -x "$(which ssh-add)" ]; then
	ssh-add -A &> /dev/null
fi

export RVM_DIR="/home/jacob/.rvm"
[[ -s "$RVM_DIR/scripts/rvm" ]] && source "$RVM_DIR/scripts/rvm"

export NVM_DIR="/home/jacob/.nvm"
[[ -s "$NVM_DIR/nvm.sh" ]] && source "$NVM_DIR/nvm.sh"

alias resource="source $HOME/.zshrc"
