install: $(HOME)/.gitconfig  $(HOME)/.vim $(HOME)/.vimrc

$(HOME)/.gitconfig:
	@ln -s $(shell pwd)/git/config $(HOME)/.gitconfig
	@echo "Created symbolic link for .gitconfig"

$(HOME)/.vim:
	@ln -s $(shell pwd)/vim/vim $(HOME)/.vim
	@echo "Created symbolic link for .vim"

$(HOME)/.vimrc:
	@ln -s $(shell pwd)/vim/vimrc $(HOME)/.vimrc
	@echo "Created symbolic link for .vimrc"
clean:
	@rm -f $(HOME)/.gitconfig 
	@rm -fr $(HOME)/.vimrc $(HOME)/.vim
	@echo "Removed all dotfiles"

.PHONY: clean
