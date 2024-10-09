#!/bin/bash

set -x
set -e

dpkg-scanpackages -m . /dev/null >Packages

(gh release list --json tagName | jq .\[\].tagName -r | xargs -L1 gh release delete) || true
gh release create --latest "$(date +%s)" ./*.deb ./Packages
