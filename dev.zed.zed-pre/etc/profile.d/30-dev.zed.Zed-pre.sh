if [[ :$PATH: != *:/opt/dev.zed.Zed-pre/bin:* ]]; then
	PATH=/opt/dev.zed.Zed-pre/bin:${PATH:-/usr/local/bin:/usr/bin}
fi
export PATH

if [[ :$XDG_DATA_DIRS: != *:/opt/dev.zed.Zed-pre/share:* ]]; then
	XDG_DATA_DIRS=/opt/dev.zed.Zed-pre/share:${XDG_DATA_DIRS:-/usr/local/share:/usr/share}
fi
export XDG_DATA_DIRS
