#!/bin/bash

# Ensure the directory we're going to render into exists.
mkdir -p ${HOME}/.dotfiles/screen

# Copy our base screenrc file.
cp ${HOME}/.dotfiles/screen-per-host/dot-screenrc ${HOME}/.dotfiles/screen/dot-screenrc

# If we have a per-host windows file, append it to the screenrc file.
if [ -f "${HOME}/.dotfiles/screen-per-host/${HOSTNAME}-windows" ]; then
	cat "${HOME}/.dotfiles/screen-per-host/${HOSTNAME}-windows" >> ~/.dotfiles/screen/dot-screenrc
fi
