# My Cheat Sheet for NeoVim

## Customized mappings

### In normal mode

* `<Esc><Esc>`: nohlserach
* `<leader>{y, Y}`: copy to clickboard
* `<leader>{p, P}`: paste from clickboard

### In insert mode

* `jj`: Exit from insert mode
* `j<Space>`: insert "j"

## Mappings for plugins

### hop.nvim

Neovim motions on speed.

* `<leader>w`: Word mode
* `<leader>f`: 1-char mode
* `<leader>s`: 2-char mode
* `<leader>/`: Pattern mode

### denite.nvim

A Dark powered plugin for Neovim/Vim to unite all interfaces.

#### In normal mode

* `<leader><leader>w`: browse files

#### In denite buffer

* `e`: open a file
* `p`: preview a file
* `s`: split a file
* `v`: split a file vertically
* `t`: open a file with new tab
* `q`: close a dein buffer
