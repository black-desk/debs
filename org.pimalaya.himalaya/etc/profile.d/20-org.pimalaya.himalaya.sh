#!/usr/bin/env sh

case :"$PATH": in
*:/opt/org.pimalaya.himalaya/bin:*) ;;
*)
	PATH=/opt/org.pimalaya.himalaya/bin:${PATH:-/usr/local/bin:/usr/bin}
	;;
esac
export PATH

case :"$XDG_DATA_DIRS": in
*:/opt/org.pimalaya.himalaya/share:*) ;;
*)
	XDG_DATA_DIRS=/opt/org.pimalaya.himalaya/share:${XDG_DATA_DIRS:-/usr/local/share:/usr/share}
	;;
esac
export XDG_DATA_DIRS
