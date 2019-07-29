# KiTTy

From: https://sw.kovidgoyal.net/kitty/binary.html

You can install pre-built binaries of kitty if you are on macOS or Linux using
the following simple command:

```
curl -L https://sw.kovidgoyal.net/kitty/installer.sh | sh /dev/stdin
```

The binaries will be installed in the standard location for your OS,
/Applications/kitty.app on macOS and ~/.local/kitty.app on Linux. The installer
only touches files in that directory. To update kitty, simply re-run the
command.

## Config

kitty looks for a config file in the OS config directories (usually
~/.config/kitty/kitty.conf)

Add a custom link to the config file in this repo and you're good to go.

```
include ~/.dotfiles/kitty/custom.conf
```

To add it quickly:
`echo "include ~/.dotfiles/kitty/custom.conf" >> ~/.config/kitty/kitty.conf`

## Tmux Italic Font Support

To make italics show up correctly within kitty, we need to update our terminfo
with the supplied values. (This was pulled from [these
directions](https://medium.com/@dubistkomisch/how-to-actually-get-italics-and-true-colour-to-work-in-iterm-tmux-vim-9ebe55ebc2be).)

There are two files in this directory with the terminfo details.

- tmux-256color.terminfo
- xterm-256color-italic.terminfo

Run `./tic-script` to run the two tic commands, which add the necessary information to the terminfo database.

This should be all you need to do for kitty. If using iterm, there are more directions on the page...
