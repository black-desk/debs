#!/bin/env bash

set -e

GIT=${GIT:="git"}

repoRoot="$("$GIT" rev-parse --show-toplevel)"
pushd "$repoRoot/one.metacubex.clash-meta/tools"

VERSION=${VERSION:="$(
	gh release view -R metacubex/mihomo --json tagName |
		jq -r .tagName |
		sed -e 's/v//'
)"}

sed -i 's/(.*)/('"$VERSION"')/' ../debian/changelog
popd

dpkg-buildpackage -us -uc -b
