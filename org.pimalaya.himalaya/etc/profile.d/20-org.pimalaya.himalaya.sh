#!/bin/sh

if echo ":$PATH:" | grep -q '.*:/opt/org.pimalaya.himalaya/bin:.*'; then
	PATH=/opt/org.pimalaya.himalaya/bin:$PATH
fi
export PATH

if echo ":$MANPATH:" | grep -q '.*:/opt/org.pimalaya.himalaya/share/man:.*'; then
	MANPATH=/opt/org.pimalaya.himalaya/share/man:$MANPATH
fi
export MANPATH

if echo ":$XDG_DATA_DIRS:" | grep -q '.*:/opt/org.pimalaya.himalaya/share:.*'; then
	XDG_DATA_DIRS=/opt/org.pimalaya.himalaya/share:$XDG_DATA_DIRS
fi
export XDG_DATA_DIRS
