export EDITOR='${which vim}'
alias e='$EDITOR'

function d() {
	e $@ .
}

alias g=git
alias s=subl
alias ls='ls -Gh --color=auto --group-directories-first'
alias resource='source $HOME/.zshrc'

[[ -s '$HOME/.rvm/scripts/rvm' ]] && source '$HOME/.rvm/scripts/rvm'
