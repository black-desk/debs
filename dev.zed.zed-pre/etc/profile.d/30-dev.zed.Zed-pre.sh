#!/usr/bin/env sh

case :"$PATH": in
*:/opt/dev.zed.Zed-pre/bin:*) ;;
*)
	PATH=/opt/dev.zed.Zed-pre/bin:${PATH:-/usr/local/bin:/usr/bin}
	;;
esac
export PATH

case :"$XDG_DATA_DIRS": in
*:/opt/dev.zed.Zed-pre/share:*) ;;
*)
	XDG_DATA_DIRS=/opt/dev.zed.Zed-pre/share:${XDG_DATA_DIRS:-/usr/local/share:/usr/share}
	;;
esac
export XDG_DATA_DIRS
