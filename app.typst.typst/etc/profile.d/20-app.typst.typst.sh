if [[ :$PATH: != *:/opt/app.typst.typst/bin:* ]]; then
	PATH=/opt/app.typst.typst/bin:$PATH
fi
export PATH

if [[ :$MANPATH: != *:/opt/app.typst.typst/share/man:* ]]; then
	MANPATH=/opt/app.typst.typst/share/man:$MANPATH
fi
export MANPATH

if [[ :$XDG_DATA_DIRS: != *:/opt/app.typst.typst/share:* ]]; then
	XDG_DATA_DIRS=/opt/app.typst.typst/share:$XDG_DATA_DIRS
fi
export XDG_DATA_DIRS
