if [[ :$PATH: != *:/opt/dev.zed.Zed-pre/bin:* ]]; then
	PATH=/opt/dev.zed.Zed-pre/bin:$PATH
fi
export PATH

if [[ :$MANPATH: != *:/opt/dev.zed.Zed-pre/share/man:* ]]; then
	MANPATH=/opt/dev.zed.Zed-pre/share/man:$MANPATH
fi
export MANPATH

if [[ :$XDG_DATA_DIRS: != *:/opt/dev.zed.Zed-pre/share:* ]]; then
	XDG_DATA_DIRS=/opt/dev.zed.Zed-pre/share:$XDG_DATA_DIRS
fi
export XDG_DATA_DIRS
