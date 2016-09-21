#!/bin/zsh
cd "$(dirname "${ZSH_SOURCE}")";

git pull origin master;

function run() {
	rsync --exclude ".git/" --exclude "bootstrap.zsh" --exclude "readme.md" --exclude "license" -avh --no-perms . ~;
	source ~/.zshrc;
}

if [ "$1" == "--force" -o "$1" == "-f" ]; then
	run;
else
	read -p "This may overwrite existing files in your home directory. Are you sure? (y/n) " -n 1;
	echo "";
	if [[ $REPLY =~ ^[Yy]$ ]]; then
		run;
	fi;
fi;
unset run;
