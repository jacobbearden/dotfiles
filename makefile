DOTFILES_ROOT := $(shell pwd)

all: bash zsh git vim editorconfig

git:
	ln -fs $(DOTFILES_ROOT)/.gitconfig ${HOME}/.gitconfig
	ln -fs $(DOTFILES_ROOT)/.gitignore ${HOME}/.gitignore
	ln -fs $(DOTFILES_ROOT)/.gitattributes ${HOME}/.gitattributes

vim:
	ln -fs $(DOTFILES_ROOT)/.vimrc ${HOME}/.vimrc

editorconfig:
	ln -fs $(DOTFILES_ROOT)/.editorconfig ${HOME}/.editorconfig

zsh:
	ln -fs $(DOTFILES_ROOT)/.zshrc ${HOME}/.zshrc

bash:
	ln -fs $(DOTFILES_ROOT)/.bash_profile ${HOME}/.bash_profile
