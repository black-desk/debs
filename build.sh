#!/bin/env bash

set -e

sudo apt install devscripts equivs

for dir in */; do
	pushd "$dir"
        mk-build-deps .
        sudo apt install ./*.deb
	if [ -f ./tools/buildpackage.sh ]; then
		./tools/buildpackage.sh
	else
		dpkg-buildpackage -us -uc -b
	fi
	popd
done
