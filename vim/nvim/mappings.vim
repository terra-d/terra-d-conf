" leader
nnoremap <Space> <nop>
let mapleader = "\<Space>"

" Easy escape.
inoremap jj <ESC>
cnoremap <expr> j
  \ getcmdline()[getcmdpos()-2] ==# 'j' ? "\<BS>\<C-c>" : 'j'
inoremap j<Space> j
