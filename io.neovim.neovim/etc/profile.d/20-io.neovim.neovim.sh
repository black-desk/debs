if [[ :$PATH: != *:/opt/io.neovim.neovim/bin:* ]]; then
	PATH=/opt/io.neovim.neovim/bin:${PATH:-/usr/local/bin:/usr/bin}
fi
export PATH

if [[ :$XDG_DATA_DIRS: != *:/opt/io.neovim.neovim/share:* ]]; then
	XDG_DATA_DIRS=/opt/io.neovim.neovim/share:${XDG_DATA_DIRS:-/usr/local/share:/usr/share}
fi
export XDG_DATA_DIRS
