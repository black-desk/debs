#!/bin/env bash

set -e
set -x

sudo apt update
sudo apt install -y devscripts equivs build-essential

pushd ./distcc
mk-build-deps
sudo apt install -y -- ./*.deb
dpkg-buildpackage -us -uc -b
popd

for dir in */; do
	pushd "$dir"
	if [ -f ./tools/buildpackage.sh ]; then
		./tools/buildpackage.sh
	else
		mk-build-deps
		sudo apt install -y -- ./*.deb
		dpkg-buildpackage -us -uc -b
	fi
	popd
done
