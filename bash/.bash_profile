export EDITOR="$(which vim)"
alias e="$EDITOR"

function d() {
	e $@ .
}

export PATH="$PATH:$HOME/.bin"

alias g=git
alias ls="ls -GLp --group-directories-first"
alias a=atom

alias unzip=dtrx

if [ -x "$(which ssh-add)" ]; then
	ssh-add -A &> /dev/null
fi

export RVM_DIR="/home/jacob/.rvm"
[[ -s "$RVM_DIR/scripts/rvm" ]] && source "$RVM_DIR/scripts/rvm"

export NVM_DIR="/home/jacob/.nvm"
[[ -s "$NVM_DIR/nvm.sh" ]] && source "$NVM_DIR/nvm.sh"
