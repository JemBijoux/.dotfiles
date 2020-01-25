# Troubleshooting

## Tmux / Italics Support

Getting nice looking italic font support in a shell relies on the shell, tmux,
vim, and font support. When running tmux, a different terminfo may be required
to properly enable italic and color support.

From a shell, run the following command relative to this directory to source the
terminfo file we have here that includes the codes for italics.

```
$ tic -x tmux.terminfo
```

For further troubleshooting, see the following resources:

- https://alexpearce.me/2014/05/italics-in-iterm2-vim-tmux/
- 
- https://apple.stackexchange.com/questions/249307/tic-doesnt-read-from-stdin-and-segfaults-when-adding-terminfo-to-support-italic/249385
- https://github.com/tmux/tmux/issues/504
- https://github.com/tmux/tmux/blob/2.1/FAQ#L355-L383
