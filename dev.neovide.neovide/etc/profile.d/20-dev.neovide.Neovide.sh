if [[ :$PATH: != *:/opt/dev.neovide.Neovide/bin:* ]]; then
	PATH=/opt/dev.neovide.Neovide/bin:$PATH
fi
export PATH

if [[ :$MANPATH: != *:/opt/dev.neovide.Neovide/share/man:* ]]; then
	MANPATH=/opt/dev.neovide.Neovide/share/man:$MANPATH
fi
export MANPATH

if [[ :$XDG_DATA_DIRS: != *:/opt/dev.neovide.Neovide/share:* ]]; then
	XDG_DATA_DIRS=/opt/dev.neovide.Neovide/share:$XDG_DATA_DIRS
fi
export XDG_DATA_DIRS
