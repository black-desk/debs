#!/bin/env bash

set -e

sudo apt update
sudo apt install debhelper

for dir in */; do
	pushd "$dir"
	if [ -f ./tools/buildpackage.sh ]; then
		./tools/buildpackage.sh
	else
		dpkg-buildpackage -us -uc -b
	fi
	popd
done

wget https://discord.com/api/download/stable?platform=linux&format=deb
