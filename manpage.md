% dotfiles(1) | dotfiles usage documentation

# NAME

dotfiles - set of config files for linux machines.

# SYNOPSIS

`bash install.sh`

# DESCRIPTION

This config set aimed at work in the terminal.

## FEATURES

This dotfiles provides next features:

1. `i3` window manager              \
2. `polybar` as status bar          \
3. `urxvt` as terminal emulator     \
4. `zsh` as shell                   \
5. `lf` as file manager             \
6. `cmus` as music player           \
7. `neovim` as text editor          \
8. `xsel` for copy to clipboard     \
9. `tmux` as terminal multiplexer   

## REQUIREMENTS

1. `i3`                                                                                                 \
2. `polybar`                                                                                            \
3. `lf`                                                                                                 \
4. `cmus`                                                                                               \
5. `zsh`                                                                                                \
6. `rxvt-unicode`                                                                                       \
7. `tmux`                                                                                               \
8. `neovim` (not from debian repository, but from [github](https://github.com/neovim/neovim/releases)   \
9. [JetBrainsMono Nerd Fonts](https://www.nerdfonts.com/font-downloads)                                 

## USAGE

> **Nota Bene**     \
> - `C` mean `Ctrl` \
> - `M` mean `Alt`  

### tmux

- `C-Space` - prefix-key (`<PREFIX>`)                               \
- `M-j` - previous windows                                          \
- `M-k` - next windows                                              \
- `<PREFIX> [` - go to vim mode (useful for copying from terminal)   

### neovim

- `Space` - leader key (`<LEADER>`)                     \
- `<LEADER> n` - NERDTreeToggle                         \
- `<LEADER> h` - turn off highlight (after searching)   \
- `<LEADER> mm` - run `make`                            \
- `<LEADER> mc` - run `make clean`                      \
- `<LEADER> sh` - horizontal split                      \
- `<LEADER> sv` - vertical split                        \
- `<LEADER> qo` - open `quickfix` list                  \
- `<LEADER> qp` - previous `quickfix` item              \
- `<LEADER> qn` - next `quickfix` item                  \
- `<LEADER> id` - insert date in `YYYY-mm-DD` format    \
- `<LEADER> ih` - insert date in `HH:MM:SS` format      

# FILES


- `i3`                                                                          \
    - `config` - i3-config                                                      \
- `lf`                                                                          \
    - `lfrc` - lf-config                                                        \
- `neovim`                                                                      \
    - `init.lua` - nvim-config, that loading the rest                           \
    - `lua` - config directory                                                  \
        - `base`                                                                \
            - `defaultHotkeys.lua` - default neovim hotkeys                     \
            - `defaultSettings.lua` - default neovim settings                   \
            - `plugins.lua` - loading plugins, setup them and set hotkeys       \
        - `lspconfig`                                                           \
            - `lspconfig.lua` - Language Server Protocol settings               \
- `polybar`                                                                     \
    - `config.ini` - polybar-config                                             \
- `tmux`                                                                        \
    - `tmux.conf` - tmux-config                                                 \
- `urxvt`                                                                       \
    - `ext` - Perl extension folder                                             \
    - `.Xresources` - urxvt-config (need to `xrdb` to work, see `install.sh`)   \
- `wallpapers`                                                                  \
    - `wp3.png` - wallpaper                                                     \
- `X11`                                                                         \
    - `xinitrc` - `startx` script                                               \
- `zathura`                                                                     \
    - `zathurarc` - pdf-viewer settings                                         \
- `zsh`                                                                         \
    - `aliases.sh` - alias file                                                 \
    - `zshenv` - variables file                                                 \
    - `zshrc` - zsh-config                                                      

# ENVIRONMENT

- `ZDOTDIR` - zsh directory (`/home/rustam/.config/zsh`)
- `XDG_CONFIG_HOME` - config directory
- `XDG_CACHE_HOME` - cache directory
- `XDG_DATA_HOME` - user's data directory
- `XINITRC` - `xinitrc` config path
- `EDITOR` - editor (e.g. for git)
- `VISUAL` - editor for command-line (`C-x C-e`)

# AUTHORS

- [rustbas](https://github.com/rustbas)

