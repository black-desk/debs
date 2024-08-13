if [[ :$PATH: != *:/opt/io.neovim.neovim-nightly/bin:* ]]; then
	PATH=/opt/io.neovim.neovim-nightly/bin:${PATH:-/usr/local/bin:/usr/bin}
fi
export PATH

if [[ :$XDG_DATA_DIRS: != *:/opt/io.neovim.neovim-nightly/share:* ]]; then
	XDG_DATA_DIRS=/opt/io.neovim.neovim-nightly/share:${XDG_DATA_DIRS:-/usr/local/share:/usr/share}
fi
export XDG_DATA_DIRS
