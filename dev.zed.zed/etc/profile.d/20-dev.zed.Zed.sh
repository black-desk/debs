if [[ :$PATH: != *:/opt/dev.zed.Zed/bin:* ]]; then
	PATH=/opt/dev.zed.Zed/bin:${PATH:-/usr/local/bin:/usr/bin}
fi
export PATH

if [[ :$XDG_DATA_DIRS: != *:/opt/dev.zed.Zed/share:* ]]; then
	XDG_DATA_DIRS=/opt/dev.zed.Zed/share:${XDG_DATA_DIRS:-/usr/local/share:/usr/share}
fi
export XDG_DATA_DIRS
