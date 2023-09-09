# _mbecker20 Neovim?_

## Setup

1. clone the repo and run the setup script

```sh
git clone https://github.com/mbecker20/nvim-config.git ~/.config/nvim && sh ~/.config/nvim/setup.sh
```

2. finish setting up tmux

- open terminal, type `tmux new -s 0` to create a new tmux session
- press Ctrl + a, Shift + i to have tmux package manager install the packages
- `exit` and start new tmux session. should be good to go.

## Usage

```
cd <project dir>
nvim .
```

the "leader" key is set to " " (ie the spacebar). press it and you will see a menu for some things you can do.
for example, spacebar then _g_ will open lazygit in a floating terminal.
