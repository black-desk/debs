#!/bin/env bash

set -e
set -x

if [ "$(id -u)" != "0" ]; then
	echo "This script must be run as root" 1>&2
	exit 1
fi

export DEBIAN_FRONTEND=noninteractive
export DEBIAN_BUILD_OPTIONS="nocheck"

apt update
apt dist-upgrade
apt install devscripts equivs build-essential

for dir in */; do
	pushd "$dir"
	if [ -f ./tools/buildpackage.sh ]; then
		./tools/buildpackage.sh
	fi

	mk-build-deps --install --remove
	dpkg-buildpackage --unsign-source --unsign-changes --build=binary
	apt autoremove -- \*-build-deps
	popd
done
