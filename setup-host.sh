#!/bin/bash

rpm-ostree install \
	kitty \
	stow \
	mako \
	nwg-launchers \
	brightnessctl \
	podman-compose

systemctl enable --now podman.socket
