#!/bin/env bash

set -e
set -x

GIT=${GIT:="git"}

repoRoot="$("$GIT" rev-parse --show-toplevel)"
pushd "$repoRoot/dev.zed.zed-pre/tools"

VERSION=${VERSION:="$(
	curl -s https://api.github.com/repos/zed-industries/zed/releases |
		jq -r 'map(select(.prerelease)) | .[0].tag_name' |
		sed -e 's/v//'
)"}

sed -i 's/(.*)/('"$VERSION"')/' ../debian/changelog
popd

dpkg-buildpackage -us -uc -b
