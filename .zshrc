#!/bin/zsh
source $HOME/.bash_profile

setopt PROMPT_SUBST

autoload -U colors && colors
autoload -Uz compinit && compinit

zstyle ":completion:*" menu select
zstyle ":completion:*" matcher-list "m:{a-zA-Z}={A-Za-z}"

precmd() {
	print ""
}

prompt_char() {
	echo "➤ "
}

abbrev_path() {
	echo "%(5~|%-1~/…/%3~|%4~)"
}

parse_git_branch() {
	branch="$(git branch 2>/dev/null | grep '*' | cut -d ' ' -f 2)"
	if [[ -z "$branch" ]]; then
		return
	else
		branch="%{$fg[green]%}$branch"
	fi

	if ! [[ -z "$(git status -s)" ]]; then
		branch="$branch%{$fg[yellow]%}*"
	fi

	echo " ($branch%{$reset_color%})"
}

export PS1="$(prompt_char)$(abbrev_path)$(parse_git_branch) $ "

source $HOME/.zsh/plugins/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh
