#!/bin/env bash

set -e

for dir in */; do
	pushd "$dir"
	sudo apt build-dep .
	if [ -f ./tools/buildpackage.sh ]; then
		./tools/buildpackage.sh
	else
		dpkg-buildpackage -us -uc -b
	fi
	popd
done
