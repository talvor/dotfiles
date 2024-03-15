#!/bin/bash

sudo dnf copr enable atim/lazygit -y
sudo dnf install -y \
	lazygit \
	go \
	delve \
	pip

if ! [ -x "$(command -v podman-remote)" ]; then
	# Install podman-remote
	echo "Installing podman-remote"
	sudo dnf install -y podman-remote
	sudo ln -s /usr/bin/podman-remote /usr/bin/podman
	sudo ln -s /usr/bin/podman-remote /usr/bin/docker
fi

if ! [ -x "$(command -v docker-compose)" ]; then
	# Install docker-compose
	echo "Installing docker-compose"
	sudo dnf install -y docker-compose
fi
