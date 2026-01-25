DEBIAN_DEPS = \
			  handbrake \
			  screen \
			  stow \
			  vim

install-debian-packages:
	sudo apt update && sudo apt install -y $(DEBIAN_DEPS)

install-dotfiles:
	# This requires ~/.gnupg/ which includes secrets
	stow --dotfiles git
	stow --dotfiles screen
	(test -f ~/.vim/bundle/Vundle.vim/README.md && stow --dotfiles vim) || (git clone https://github.com/VundleVim/Vundle.vim.git ~/.vim/bundle/Vundle.vim && stow --dotfiles vim && vim +PluginInstall +qall)
