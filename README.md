# JemBijoux's .dotfiles

Working with shells in multiple places, I've come to collect some configuration
that I might want to share between systems. Those config are stored in this repo.

See the readme in a specific sub-directory for details related to that
application...

- [Vim](./vim/README.md)
- [Tmux](./tmux/README.md)
- [ZSH](./zsh/README.md)
- [npm](./npm/README.md)

## Installation

1. Start by cloning the dotfiles repo (typically to your home folder). Because
   the folder itself starts with a dot, it will be invisible by default.
2. Run `~/.dotfiles/link-all.sh` which will automatically create symlinks for
   all of the dotfile directories at once.
3. You can also just run the `install-link.sh` in any of the subfolders.
