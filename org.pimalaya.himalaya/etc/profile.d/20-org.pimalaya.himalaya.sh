#!/bin/sh

if echo ":$PATH:" | grep -q '.*:/opt/org.pimalaya.himalaya/bin:.*'; then
	PATH=/opt/org.pimalaya.himalaya/bin:${PATH:-/usr/local/bin:/usr/bin}
fi
export PATH

if echo ":$XDG_DATA_DIRS:" | grep -q '.*:/opt/org.pimalaya.himalaya/share:.*'; then
	XDG_DATA_DIRS=/opt/org.pimalaya.himalaya/share:${XDG_DATA_DIRS:-/usr/local/share:/usr/share}
fi
export XDG_DATA_DIRS
