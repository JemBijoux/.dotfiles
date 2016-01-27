# JemBijoux's .dotfiles

As I do more work with the command line it's making more and more sense to put 
some of the configuration into a dotfiles repo so that I can refer to it later.
Also I've started playing more with `vim` and would like to save my progress
(wrt configuration etc). 

This is all a work in progress... (but at least it's versioned and saved)

## .vimrc
Basic vim configuration

Install: $  `ln -s ~/.dotfiles/.vim ~`
Color theme: One Dark

### Plugins

- nerdtree: a simple file browser sidebar
- syntastic: syntax highlighting (haven't figured it out yet)
- vim-airline: A nice status bar for vim
- vim-gitgutter: shows git changes in the gutter
- vim-fugitive: lot's of git controls
- command-t: quick fuzzyfinder opener for files
  Had problems installing this because of compilationg problems.
  Just needed to ensure ruby was installed with disable binary, and then
  reinstalled vim. 
  (Details: https://github.com/rvm/rvm/issues/3360#issuecomment-87340953)

*Plugins are now installed as git submodules*

There's information on this 
[vim-casts](http://vimcasts.org/episodes/synchronizing-plugins-with-git-submodules-and-pathogen/)
post about how to do this, but essentially it comes down to a simple git
command to pull in all the submodules.

```
git submodule update --init
```
