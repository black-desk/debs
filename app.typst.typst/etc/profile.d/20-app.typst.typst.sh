#!/usr/bin/env sh

case :"$PATH": in
*:/opt/app.typst.typst/bin:*) ;;
*)
	PATH=/opt/app.typst.typst/bin:${PATH:-/usr/local/bin:/usr/bin}
	;;
esac
export PATH

case :"$XDG_DATA_DIRS": in
*:/opt/app.typst.typst/share:*) ;;
*)
	XDG_DATA_DIRS=/opt/app.typst.typst/share:${XDG_DATA_DIRS:-/usr/local/share:/usr/share}
	;;
esac
export XDG_DATA_DIRS
