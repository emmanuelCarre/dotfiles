mkfile_path := $(dir $(abspath $(lastword $(MAKEFILE_LIST))))

ZSH_CONFIG_SOURES := $(shell find zsh/custom  -name '*.zsh')
ZSH_CONFIG_TARGETS := $(patsubst zsh%, ~/.oh-my-zsh%, $(ZSH_CONFIG_SOURES))

.PHONY: all
all: asdf git vim zsh

.PHONY: asdf
asdf: ~/.tool-versions

.PHONY: git
git: ~/.config/git

.PHONY: vim
vim: ~/.vimrc

.PHONY: zsh
zsh: $(ZSH_CONFIG_TARGETS)

~/.tool-versions: 
	@echo "Installing .tool-versions"
	@ln -s ${mkfile_path}/asdf/tool-versions ~/.tool-versions

~/.vimrc:
	@echo "Installing .vimrc"
	@ln -s ${mkfile_path}vim/vimrc.symlink ~/.vimrc

~/.config/git:
	@echo "Installing git configurations"
	@ln -s ${mkfile_path}git ~/.config/git

$(ZSH_CONFIG_TARGETS):
	@echo "Installing ZSH custom configuration $(notdir $@)"
	@ln -s ${mkfile_path}zsh/custom/$(notdir $@) $@
