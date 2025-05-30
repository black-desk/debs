#!/usr/bin/env sh

case :"$PATH": in
*:/opt/io.neovim.neovim/bin:*) ;;
*)
	PATH=/opt/io.neovim.neovim/bin:${PATH:-/usr/local/bin:/usr/bin}
	;;
esac
export PATH

case :"$XDG_DATA_DIRS": in
*:/opt/io.neovim.neovim/share:*) ;;
*)
	XDG_DATA_DIRS=/opt/io.neovim.neovim/share:${XDG_DATA_DIRS:-/usr/local/share:/usr/share}
	;;
esac
export XDG_DATA_DIRS
