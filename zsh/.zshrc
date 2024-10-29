#!/bin/zsh
source $HOME/.bashrc

setopt PROMPT_SUBST

setopt INC_APPEND_HISTORY
setopt SHARE_HISTORY
SAVEHIST=1000000
HISTSIZE=1000000

HISTFILE="$HOME/.zsh_history"

autoload -U colors && colors
autoload -Uz compinit && compinit # <- slow

zstyle ":completion:*" menu select
zstyle ":completion:*" matcher-list "m:{a-zA-Z}={A-Za-z}"

bindkey '^[[Z' reverse-menu-complete

abbrev_path() {
  path="$(sed "s:\([^/]\)[^/]*/:\1/:g" <<<$(sed s:$HOME:\~:g <<<$PWD))"
  echo "%{$fg[blue]%}$path%{$reset_color%}"
}

on_host() {
  echo " [%{$fg[yellow]%}$(hostname)%{$reset_color%}]"
}

parse_git_branch() {
  branch="$(git branch 2>/dev/null | grep "*")"
  detached="$(echo "$branch" | grep -E "detached|no branch")"
  rebasing="$(echo "$branch" | grep "no branch, rebasing")"

  if [[ ! -z "$detached" ]] || [[ ! -z "$rebasing" ]]; then
    branch="$(git rev-parse --short HEAD)"
  else
    branch="$(echo "$branch" | awk '{ print $2 }')"
  fi

  if [[ -z "$branch" ]]; then
    return
  fi

  if [[ ! -z "$detached" ]]; then
    branch="%{$fg[red]%}$branch"
  elif [[ ! -z "$rebasing" ]]; then
    branch="%{$fg[red]%}$branch!"
  else
    branch="%{$fg[green]%}$branch"
  fi

  if ! [[ -z "$(git status -s)" ]]; then
    branch="$branch%{$fg[red]%}!"
  fi

  echo " ($branch%{$reset_color%})"
}

export PS1='$(abbrev_path)$(on_host)$(parse_git_branch) $ '

# enable syntax highlighting
source /opt/homebrew/share/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh
