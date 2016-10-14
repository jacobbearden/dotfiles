DOTFILES_ROOT := $(shell pwd)
SUBLIME_ROOT := ${HOME}/.config/sublime-text-3/Packages/User

all: bash zsh git vim sublime editorconfig
.PHONY: bash zsh git vim sublime editorconfig

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

sublime:
	ln -fs $(DOTFILES_ROOT)/sublime/Preferences.sublime-settings $(SUBLIME_ROOT)/Preferences.sublime-settings
	ln -fs $(DOTFILES_ROOT)/sublime/Default\ \(Linux\).sublime-keymap ${SUBLIME_ROOT}/Default\ \(Linux\).sublime-keymap
	ln -fs $(DOTFILES_ROOT)/sublime/Default\ \(Linux\).sublime-mousemap $(SUBLIME_ROOT)/Default\ \(Linux\).sublime-mousemap
	ln -fs $(DOTFILES_ROOT)/sublime/Package\ Control.sublime-settings $(SUBLIME_ROOT)/Package\ Control.sublime-settings
	ln -fs $(DOTFILES_ROOT)/sublime/Markdown\ Extended.sublime-settings $(SUBLIME_ROOT)/Markdown\ Extended.sublime-settings
	ln -fs $(DOTFILES_ROOT)/sublime/ColorHighlighter.sublime-settings $(SUBLIME_ROOT)/ColorHighlighter.sublime-settings
	ln -fs $(DOTFILES_ROOT)/sublime/bh_core.sublime-settings $(SUBLIME_ROOT)/bh_core.sublime-settings

editorconfig:
	ln -fs $(DOTFILES_ROOT)/editorconfig/.editorconfig ${HOME}/.editorconfig
