DOTFILES_ROOT := $(shell pwd)

define install-if-missing
	@brew list $1 > /dev/null 2>&1 || brew install $1
endef

all: bash zsh brew bin git vim editorconfig vscode
.PHONY: bash zsh brew bin git vim editorconfig vscode

bash:
	ln -fs $(DOTFILES_ROOT)/bash/.bashrc ${HOME}/.bashrc

zsh:
	$(call install-if-missing, "zsh")
	ln -Ffs $(DOTFILES_ROOT)/zsh  ${HOME}/.zsh
	ln -fs $(DOTFILES_ROOT)/zsh/.zshrc ${HOME}/.zshrc

brew:
	ln -fs $(DOTFILES_ROOT)/brew/Brewfile ${HOME}/.Brewfile
	brew bundle --global

bin:
	[ ! -h ${HOME}/.bin ] && ln -fs $(DOTFILES_ROOT)/bin ${HOME}/.bin || true

git:
	ln -fs $(DOTFILES_ROOT)/git/.gitconfig ${HOME}/.gitconfig
	ln -fs $(DOTFILES_ROOT)/git/.gitignore ${HOME}/.gitignore

vim:
	$(call install-if-missing, "vim")
	[ ! -L ${HOME}/.vim ] && ln -Ffs $(DOTFILES_ROOT)/vim/ ${HOME}/.vim || true
	ln -fs $(DOTFILES_ROOT)/vim/.vimrc ${HOME}/.vimrc

editorconfig:
	ln -fs $(DOTFILES_ROOT)/editorconfig/.editorconfig ${HOME}/.editorconfig

vscode:
	ln -fs $(DOTFILES_ROOT)/vs-code/settings.json /Users/${USER}/Library/Application\ Support/Code/User/settings.json
	ln -fs $(DOTFILES_ROOT)/vs-code/keybindings.json /Users/${USER}/Library/Application\ Support/Code/User/keybindings.json
	ln -fs $(DOTFILES_ROOT)/vs-code/snippets /Users/${USER}/Library/Application\ Support/Code/User
	cat $(DOTFILES_ROOT)/vs-code/extensions | xargs -L 1 code --install-extension
