#!/usr/bin/env sh

case :"$PATH": in
*:/opt/dev.zed.Zed/bin:*) ;;
*)
	PATH=/opt/dev.zed.Zed/bin:${PATH:-/usr/local/bin:/usr/bin}
	;;
esac
export PATH

case :"$XDG_DATA_DIRS": in
*:/opt/dev.zed.Zed/share:*) ;;
*)
	XDG_DATA_DIRS=/opt/dev.zed.Zed/share:${XDG_DATA_DIRS:-/usr/local/share:/usr/share}
	;;
esac
export XDG_DATA_DIRS
