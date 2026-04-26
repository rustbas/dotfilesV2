# dotfilesV2

dotfiles on Debian and i3

## Features

- `zsh` + `ohmyzsh`
- `urxvt`
- `i3` + `polybar`
- TO BE DONE

## Installation

```conlose
foo@bar:~$ git clone https://github.com/rustbas/dotfilesV2.git
foo@bar:~$ cd dotfilesV2
foo@bar:~/dotfilesV2$ stow -v --target=$HOME neovim # and stuff
```

## Install manual

```shell
gzip dotfiles.1
mkdir $HOME/.local/share/man/man1
cp dotfiles.1.gz $HOME/.local/share/man/man1
```

## Requirements

See manual

## Sources

1. [`resize-font`](https://github.com/simmel/urxvt-resize-font/tree/master) for urxvt
