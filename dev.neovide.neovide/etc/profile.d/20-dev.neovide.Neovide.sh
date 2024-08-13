if [[ :$PATH: != *:/opt/dev.neovide.Neovide/bin:* ]]; then
	PATH=/opt/dev.neovide.Neovide/bin:${PATH:-/usr/local/bin:/usr/bin}
fi
export PATH

if [[ :$XDG_DATA_DIRS: != *:/opt/dev.neovide.Neovide/share:* ]]; then
	XDG_DATA_DIRS=/opt/dev.neovide.Neovide/share:${XDG_DATA_DIRS:-/usr/local/share:/usr/share}
fi
export XDG_DATA_DIRS
