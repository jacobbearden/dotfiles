export EDITOR="$(which vim)"
alias e="$EDITOR"

function d() {
  e $@ .
}

export PATH="$PATH:./bin"
export PATH="$PATH:$HOME/.bin"
export PATH="$PATH:/usr/local/sbin"

alias g=git
alias ls="gls --color --group-directories-first"

# auto-load `ssh-agent`
if [ -x "$(which ssh-add)" ]; then
  ssh-add &> /dev/null
fi

# load nvm
export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"

# load rvm
[[ -s "$HOME/.rvm/scripts/rvm" ]] && source "$HOME/.rvm/scripts/rvm"