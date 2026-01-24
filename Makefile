DEBIAN_DEPS = \
			  handbrake \
			  screen \
			  stow \
			  vim

install-debian-packages:
	sudo apt update && sudo apt install -y $(DEBIAN_DEPS)

install-vim:
	test -f ~/.vim/bundle/Vundle.vim/README.md || (git clone https://github.com/VundleVim/Vundle.vim.git ~/.vim/bundle/Vundle.vim && stow --dotfiles vim && vim +PluginInstall +qall)

all: install-debian-packages install-vim
	# This requires ~/.gnupg/ which includes secrets
	stow --dotfiles git
	stow --dotfiles screen
	stow --dotfiles vim
