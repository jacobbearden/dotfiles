export EDITOR="$(which vim)"
alias e="$EDITOR"

function d() {
	e $@ .
}

alias ls="ls -Gh --color=auto --group-directories-first"
alias g=git
alias s=subl
alias unzip=dtrx

alias resource="source $HOME/.zshrc"

export RVM_DIR="/home/jacob/.rvm"
[[ -s "$RVM_DIR/scripts/rvm" ]] && source "$HOME/.rvm/scripts/rvm"

export NVM_DIR="/home/jacob/.nvm"
[[ -s "$NVM_DIR/nvm.sh" ]] && source "$NVM_DIR/nvm.sh"
