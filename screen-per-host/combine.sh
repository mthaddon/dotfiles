#!/bin/bash

cp ~/.dotfiles/screen-per-host/dot-screenrc ~/.dotfiles/screen/dot-screenrc
if [ -f "~/.dotfiles/screen-per-host/${HOSTNAME}-windows" ]; then
	cat "~/.dotfiles/screen-per-host/${HOSTNAME}-windows" >> ~/.dotfiles/screen/dot-screenrc
fi
