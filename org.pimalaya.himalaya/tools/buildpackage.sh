#!/bin/env bash

set -e
set -x

GIT=${GIT:="git"}

repoRoot="$("$GIT" rev-parse --show-toplevel)"
pushd "$repoRoot/org.pimalaya.himalaya/tools"

VERSION=${VERSION:="$(
	gh release view -R soywod/himalaya --json tagName |
		jq -r .tagName |
		sed -e 's/v//'
)"}

sed -i 's/(.*)/('"$VERSION"')/' ../debian/changelog
popd
