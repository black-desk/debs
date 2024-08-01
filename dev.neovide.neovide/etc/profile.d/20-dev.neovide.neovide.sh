if [[ :$PATH: != *:/opt/dev.neovide.neovide/bin:* ]]; then
	PATH=/opt/dev.neovide.neovide/bin:$PATH
fi
export PATH

if [[ :$MANPATH: != *:/opt/dev.neovide.neovide/share/man:* ]]; then
	MANPATH=/opt/dev.neovide.neovide/share/man:$MANPATH
fi
export MANPATH

if [[ :$XDG_DATA_DIRS: != *:/opt/dev.neovide.neovide/share:* ]]; then
	XDG_DATA_DIRS=/opt/dev.neovide.neovide/share:$XDG_DATA_DIRS
fi
export XDG_DATA_DIRS
