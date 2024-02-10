if [[ :$PATH: != *:/opt/io.neovim.neovim/bin:* ]]; then
	PATH=/opt/io.neovim.neovim/bin:$PATH
fi
export PATH

if [[ :$MANPATH: != *:/opt/io.neovim.neovim/share/man:* ]]; then
	MANPATH=/opt/io.neovim.neovim/share/man:$MANPATH
fi
export MANPATH

if [[ :$XDG_DATA_DIRS: != *:/opt/io.neovim.neovim/share:* ]]; then
	XDG_DATA_DIRS=/opt/io.neovim.neovim/share:$XDG_DATA_DIRS
fi
export XDG_DATA_DIRS
