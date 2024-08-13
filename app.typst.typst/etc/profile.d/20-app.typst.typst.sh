if [[ :$PATH: != *:/opt/app.typst.typst/bin:* ]]; then
	PATH=/opt/app.typst.typst/bin:${PATH:-/usr/local/bin:/usr/bin}
fi
export PATH

if [[ :$XDG_DATA_DIRS: != *:/opt/app.typst.typst/share:* ]]; then
	XDG_DATA_DIRS=/opt/app.typst.typst/share:${XDG_DATA_DIRS:-/usr/local/share:/usr/share}
fi
export XDG_DATA_DIRS
