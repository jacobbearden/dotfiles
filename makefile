DOTFILES_ROOT := $(shell pwd)
SUBLIME_ROOT := ${HOME}/.config/sublime-text-3/Packages/User

all: bash zsh git vim atom editorconfig
.PHONY: bash zsh git vim atom editorconfig

bash:
	ln -fs $(DOTFILES_ROOT)/bash/.bash_profile ${HOME}/.bash_profile

zsh:
	ln -fs $(DOTFILES_ROOT)/zsh/.zshrc ${HOME}/.zshrc

git:
	ln -fs $(DOTFILES_ROOT)/git/.gitconfig ${HOME}/.gitconfig
	ln -fs $(DOTFILES_ROOT)/git/.gitignore ${HOME}/.gitignore
	ln -fs $(DOTFILES_ROOT)/git/.gitattributes ${HOME}/.gitattributes

vim:
	ln -fs $(DOTFILES_ROOT)/vim/.vimrc ${HOME}/.vimrc

atom:
	ln -fs ${DOTFILES_ROOT}/atom/config.cson ${HOME}/.atom/config.cson

editorconfig:
	ln -fs $(DOTFILES_ROOT)/editorconfig/.editorconfig ${HOME}/.editorconfig
