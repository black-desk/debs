# debs

This repository contains some debian packing scripts
to convert others github release asserts to .deb files.

## Packages

- [app.typst.typst](./app.typst.typst)
- [dev.neovide.neovide](./dev.neovide.neovide)
- [dev.zed.zed-pre](./dev.zed.zed-pre)
- [dev.zed.zed](./dev.zed.zed)
- [io.github.black-desk.debian-tweak](./io.github.black-desk.debian-tweak)
- [io.neovim.neovim-nightly](./io.neovim.neovim-nightly)
- [io.neovim.neovim](./io.neovim.neovim)
- [one.metacubex.clash-meta](./one.metacubex.clash-meta)
- [org.pimalaya.himalaya](./org.pimalaya.himalaya)

Check [black-desk/ppa](https://github.com/black-desk/ppa) for apt repository.

## Note

The contents in these packages are almostly installed under /opt and /etc.

Which means that we should update environment variables in /etc/environment.d
to make the binary and manuals of these packages can be founded.

But some other scripts will overwrite environment set by /etc/environment.d:

- /etc/profile overwrite PATH;

  ```sh
  # ...
  if [ "$(id -u)" -eq 0 ]; then
    PATH="/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin"
  else
    PATH="/usr/local/bin:/usr/bin:/bin:/usr/local/games:/usr/games"
  fi
  export PATH
  # ...
  ```

- /etc/X11/Xsession.d/95dbus_update-activation-env overwrite almost everything.

  <https://bugs.debian.org/cgi-bin/bugreport.cgi?bug=943917>

As we don't know what packages user installed in their environment,
we have to write a lot of scripts to make sure that
our environment variables is properly setted.

If you are using non sh compatible shell,
you have to find some way to source /etc/profile.
For example:

```zsh
# in my ~/.zprofile

emulate sh
source /etc/profile
emulate zsh

# ...
```
