" Easy escape.
inoremap jj <ESC>
cnoremap <expr> j
  \ getcmdline()[getcmdpos()-2] ==# 'j' ? "\<BS>\<C-c>" : 'j'
inoremap j<Space> j

" nohlserach
nnoremap <ESC><ESC> :nohl<CR>

" copy and paste
vnoremap <leader>y "+y
nnoremap <leader>Y "+yg_
nnoremap <leader>y "+y
nnoremap <leader>p "+p
nnoremap <leader>P "+P

