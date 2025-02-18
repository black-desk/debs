#!/bin/env bash

set -e
set -x

sudo apt update
sudo apt install -y devscripts equivs build-essential

for dir in */; do
	pushd "$dir"
	if [ -f ./tools/buildpackage.sh ]; then
		./tools/buildpackage.sh
	fi

	mk-build-deps
	sudo apt install -y -- ./*.deb
	dpkg-buildpackage -us -uc -b

	popd
done
