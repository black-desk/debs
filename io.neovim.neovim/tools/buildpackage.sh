#!/bin/env bash

set -e
set -x

GIT=${GIT:="git"}

repoRoot="$("$GIT" rev-parse --show-toplevel)"
pushd "$repoRoot/io.neovim.neovim/tools"

VERSION=${VERSION:="$(
	gh release view -R neovim/neovim --json tagName |
		jq -r .tagName |
		sed -e 's/v//'
)"}

sed -i 's/(.*)/('"$VERSION"')/' ../debian/changelog
popd

dpkg-buildpackage -us -uc -b
