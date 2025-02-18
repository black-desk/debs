#!/bin/env bash

set -e
set -x

GIT=${GIT:="git"}

repoRoot="$("$GIT" rev-parse --show-toplevel)"
pushd "$repoRoot/dev.neovide.neovide/tools"

VERSION=${VERSION:="$(
	gh release view -R neovide/neovide --json tagName |
		jq -r .tagName
)"}

sed -i 's/(.*)/('"$VERSION"')/' ../debian/changelog
popd
