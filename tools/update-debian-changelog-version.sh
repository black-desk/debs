#!/bin/env bash

GIT=${GIT:="git"}

repoRoot="$("$GIT" rev-parse --show-toplevel)"
cd "$repoRoot/tools"

VERSION=${VERSION:="$(
	gh release view -R neovim/neovim nightly --json body |
		jq -r .body |
		grep NVIM |
		sed -e 's/NVIM v//'
)"}

sed -i 's/(.*)/('"$VERSION"')/' ../debian/changelog
