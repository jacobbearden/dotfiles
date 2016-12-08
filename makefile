DOTFILES_ROOT := $(shell pwd)

all: bash zsh bin git vim tmux atom editorconfig
.PHONY: bash zsh bin git vim tmux atom editorconfig

bash:
	ln -fs $(DOTFILES_ROOT)/bash/.bash_profile ${HOME}/.bash_profile

zsh:
	ln -fs $(DOTFILES_ROOT)/zsh/.zshrc ${HOME}/.zshrc

bin:
	[ ! -h ${HOME}/.bin ] && ln -fs $(DOTFILES_ROOT)/bin ${HOME}/.bin || true

git:
	ln -fs $(DOTFILES_ROOT)/git/.gitconfig ${HOME}/.gitconfig
	ln -fs $(DOTFILES_ROOT)/git/.gitignore ${HOME}/.gitignore
	ln -fs $(DOTFILES_ROOT)/git/.gitattributes ${HOME}/.gitattributes

vim:
	ln -fs $(DOTFILES_ROOT)/vim/.vimrc ${HOME}/.vimrc

tmux:
	ln -fs ${DOTFILES_ROOT}/tmux/.tmux.conf ${HOME}/.tmux.conf

atom:
	ln -fs ${DOTFILES_ROOT}/atom/config.cson ${HOME}/.atom/config.cson
	ln -fs ${DOTFILES_ROOT}/atom/packages.cson ${HOME}/.atom/packages.cson

editorconfig:
	ln -fs $(DOTFILES_ROOT)/editorconfig/.editorconfig ${HOME}/.editorconfig
