export LANG=en_US.UTF-8

export EDITOR="$(which vim)"
alias e="$EDITOR"

function d() {
  e $@ .
}

export PATH="$PATH:/usr/local/bin"
export PATH="$PATH:/usr/local/sbin"
export PATH="$PATH:/usr/local/go/bin"
export PATH="$HOME/.bin:$PATH"

alias g=git
alias ls="gls --color --group-directories-first"
alias grep="grep --color"
alias vi="$EDITOR"

# auto-load `ssh-agent`
if [ -x "$(which ssh-add)" ]; then
  ssh-add &> /dev/null
fi

# load nvm
export NVM_DIR="$HOME/.nvm"
[ -s "/opt/homebrew/opt/nvm/nvm.sh" ] && \. "/opt/homebrew/opt/nvm/nvm.sh"
[ -s "/opt/homebrew/opt/nvm/etc/bash_completion.d/nvm" ] && \. "/opt/homebrew/opt/nvm/etc/bash_completion.d/nvm"

# load python
export PATH="/opt/homebrew/opt/python@3.12/libexec/bin:$PATH"
