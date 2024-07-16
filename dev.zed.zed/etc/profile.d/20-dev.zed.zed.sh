if [[ :$PATH: != *:/opt/dev.zed.zed/bin:* ]]; then
	PATH=/opt/dev.zed.zed/bin:$PATH
fi
export PATH

if [[ :$MANPATH: != *:/opt/dev.zed.zed/share/man:* ]]; then
	MANPATH=/opt/dev.zed.zed/share/man:$MANPATH
fi
export MANPATH

if [[ :$XDG_DATA_DIRS: != *:/opt/dev.zed.zed/share:* ]]; then
	XDG_DATA_DIRS=/opt/dev.zed.zed/share:$XDG_DATA_DIRS
fi
export XDG_DATA_DIRS
