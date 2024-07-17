if [[ :$PATH: != *:/opt/dev.zed.Zed/bin:* ]]; then
	PATH=/opt/dev.zed.Zed/bin:$PATH
fi
export PATH

if [[ :$MANPATH: != *:/opt/dev.zed.Zed/share/man:* ]]; then
	MANPATH=/opt/dev.zed.Zed/share/man:$MANPATH
fi
export MANPATH

if [[ :$XDG_DATA_DIRS: != *:/opt/dev.zed.Zed/share:* ]]; then
	XDG_DATA_DIRS=/opt/dev.zed.Zed/share:$XDG_DATA_DIRS
fi
export XDG_DATA_DIRS
