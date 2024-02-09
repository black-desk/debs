#!/bin/env bash

set -e

GIT=${GIT:="git"}

repoRoot="$("$GIT" rev-parse --show-toplevel)"
pushd "$repoRoot/io.neovim.neovim-nightly/tools"

VERSION=${VERSION:="$(
	gh release view -R neovim/neovim nightly --json body |
		jq -r .body |
		grep NVIM |
		sed -e 's/NVIM v//'
)"}

sed -i 's/(.*)/('"$VERSION"')/' ../debian/changelog
popd

dpkg-buildpackage -us -uc -b
