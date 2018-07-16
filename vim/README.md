# VIM Configuration

This is where the vim configuration lives. To install these dotfiles, all you
have to do is run the `install-link.sh` within this vim folder and we'll
automatically symlink them into the right spot.

```sh
ln -s ~/.dotfiles/vim/ ~/.vim
```

## Split Configuration

Because vim configuration can become quite large, I've split it up into a
couple of different files. There is one `extensions.vim` that contains
information related to plugins. `keybindings.vim` has everythink keyboard
related.

## Plugins

Vim plugins are all managed by [vim-plug](). Once vim is running and the
dotfiles have been sourced, you can `:PlugInstall` to pull everything down.

### Specific Plugins:

- vim-fugitive: makes git stuff way more manageable
- vim-gitgutter: shows git markers in gutter
- vim-commentary: easier comment controls
- ale: a linting engine
- ultisnips: and vim-snippets
- nerdtree: file browsing
- easymotion: double-leader for quick navigation
