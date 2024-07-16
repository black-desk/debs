#!/bin/env bash

set -e
set -x

GIT=${GIT:="git"}

repoRoot="$("$GIT" rev-parse --show-toplevel)"
pushd "$repoRoot/dev.zed.zed/tools"

VERSION=${VERSION:="$(
	gh release view -R zed-industries/zed --json tagName |
		jq -r .tagName |
		sed -e 's/v//'
)"}

sed -i 's/(.*)/('"$VERSION"')/' ../debian/changelog
popd

dpkg-buildpackage -us -uc -b
