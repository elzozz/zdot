# Z:large_blue_circle:f

 files. Take it or leave it.

## Requirements
First install some required stuff in order to use zsh, tmux and nvim.

### Shell and terminal stuff

- ZSH Plugin manager Antidode
    [Starhip](https:\\starship.rs)
    https://github.com/mattmc3/antidote
- Terminal tools
    bat - https://github.com/sharkdp/bat
    eza - https://github.com/eza-community/eza
- Basic utils: `git`, `make`, `unzip`, C Compiler (`gcc`)
    `stow` - symlink farm manager. To link all dotfiles to home.
    Clipboard tool (xclip/xsel/win32yank or other depending on platform)
    [ripgrep](https://github.com/BurntSushi/ripgrep#installation)
    [fzf](https://github.com/junegunn/fzf#installation)

TODO: complete the list.

## Installation

> [!IMPORTANT]
> Before you clone and run stow, make sure to backup your exisiting .dot files first.
> `stow` will throw an error if the file or dir alrady exists in your home dir.

```
git clone https://github.com/elzozz/zdot.git $HOME/zdot
cd $HOME/zdot
```

### `tmux` setup.

For `tmux`
```
stow tmux -t $HOME
```
Basic tmux setup. Nothing fancy...
[tpm](https://github.com/tmux-plugins/tpm) - change the clone path to $HOME/.config/tmux/plugins/tpm
[tmux-powerline](https://github.com/erikw/tmux-powerline) - tmux status line. Default conf has too much, so I disabled a few things.

For `starhip`
```
stow starship -t $HOME
```

Check if he symlinks have been created correctly.
