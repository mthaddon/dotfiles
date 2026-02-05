#!/bin/bash

cp ${HOME}/.dotfiles/screen-per-host/dot-screenrc ${HOME}/.dotfiles/screen/dot-screenrc
if [ -f "${HOME}/.dotfiles/screen-per-host/${HOSTNAME}-windows" ]; then
	cat "${HOME}/.dotfiles/screen-per-host/${HOSTNAME}-windows" >> ~/.dotfiles/screen/dot-screenrc
fi
