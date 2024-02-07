#!/bin/env bash

set -e

for dir in */ ; do
        pushd "$dir"
        sudo apt build-dep .
        dpkg-buildpackage -us -uc -b
        popd
done
