DEBIAN_DEPS = \
			  screen \
			  stow \
			  vim

install-debian-packages:
	sudo apt update && sudo apt install -y $(DEBIAN_DEPS)

install-dotfiles:
	stow --dotfiles bash
	# This requires ~/.gnupg/ which includes secrets
	stow --dotfiles git
	# We create different windows per host
	screen-per-host/render.sh
	stow --dotfiles screen
	test -f ~/.vim/bundle/Vundle.vim/README.md && rm -rf ~/.vim/bundle || true
	stow --dotfiles vim && git clone https://github.com/VundleVim/Vundle.vim.git ~/.vim/bundle/Vundle.vim && vim +PluginInstall +qall
