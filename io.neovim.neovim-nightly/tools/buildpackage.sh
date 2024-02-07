#!/bin/env bash

set -e

GIT=${GIT:="git"}

repoRoot="$("$GIT" rev-parse --show-toplevel)"
cd "$repoRoot/io.neovim.neovim-nightly/tools"

VERSION=${VERSION:="$(
	gh release view -R neovim/neovim nightly --json body |
		jq -r .body |
		grep NVIM |
		sed -e 's/NVIM v//'
)"}

sed -i 's/(.*)/('"$VERSION"')/' ../debian/changelog

dpkg-buildpackage -us -uc -b
