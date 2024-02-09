if [[ :$PATH: != *:/opt/io.neovim.neovim-nightly/bin:* ]]; then
	PATH=/opt/io.neovim.neovim-nightly/bin:$PATH
fi
export PATH

if [[ :$MANPATH: != *:/opt/io.neovim.neovim-nightly/share/man:* ]]; then
	MANPATH=/opt/io.neovim.neovim-nightly/share/man:$MANPATH
fi
export MANPATH

if [[ :$XDG_DATA_DIRS: != *:/opt/io.neovim.neovim-nightly/share:* ]]; then
	XDG_DATA_DIRS=/opt/io.neovim.neovim-nightly/share:$XDG_DATA_DIRS
fi
export XDG_DATA_DIRS
