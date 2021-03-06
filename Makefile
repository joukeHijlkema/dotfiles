DOTPATH    := $(realpath $(dir $(lastword $(MAKEFILE_LIST))))
CANDIDATES := $(wildcard *) $(wildcard config/*)
EXCLUSIONS := .git .gitmodules .gitignore README.md Makefile config autofs
DOTFILES   := $(filter-out $(EXCLUSIONS), $(CANDIDATES))

all: install

help:
	@echo "make list           #=> Show dot files in this repo"
	@echo "make deploy         #=> Create symlink to home directory"
	@echo "make update         #=> Fetch changes for this repo"
	@echo "make install        #=> Run make update, deploy"
	@echo "make clean          #=> Remove the dot files"

list:
	@$(foreach val, $(DOTFILES), /bin/ls -dF $(val);)

deploy:
	@echo '==> Start to deploy dotfiles to home directory.'
	@$(foreach val, $(DOTFILES), ln -sfnv $(abspath $(val)) $(HOME)/.$(val);)

update:
	git pull origin master
	git submodule init
	git submodule update
	git submodule foreach git pull origin master

install: update deploy
	@exec $$SHELL

clean:
	@echo 'Remove dot files in your home directory...'
	@$(foreach val, $(DOTFILES), rm -vrf $(HOME)/.$(val);)
