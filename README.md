# GNU Stow dotfiles repo

This repository contains my dotfiles. Using GNU Stow I can copy the various configuration files easily to a new machine.

- GNU Stow is basically a symlink manager
- YouTube video with nice explanation: https://www.youtube.com/watch?v=NoFiYOqnC4o

## GNU Stow naming convention and mapping

e.g. Neovim

`~/.config/nvim -> nvim/.config/nvim`

The GNU Stow naming convention is: [packange-name]/[[path-to-symlink]

## GNU Stow usage

```bash
# while at dir with this repo cloned
stow -t ~ nvim
```

- the `t` switch is telling the GNU Stow to make the symlink in specified directory. By default the Stow put the file in the parent directory. 

