#!/usr/bin/env sh

case :"$PATH": in
*:/opt/dev.neovide.Neovide/bin:*) ;;
*)
	PATH=/opt/dev.neovide.Neovide/bin:${PATH:-/usr/local/bin:/usr/bin}
	;;
esac
export PATH

case :"$XDG_DATA_DIRS": in
*:/opt/dev.neovide.Neovide/share:*) ;;
*)
	XDG_DATA_DIRS=/opt/dev.neovide.Neovide/share:${XDG_DATA_DIRS:-/usr/local/share:/usr/share}
	;;
esac
export XDG_DATA_DIRS
