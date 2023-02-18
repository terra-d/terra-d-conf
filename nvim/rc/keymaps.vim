let g:mapleader = ","

" Up/down/left/right
nnoremap u k|xnoremap u k
nnoremap e j|xnoremap e j
nnoremap n h|xnoremap n h
nnoremap i l|xnoremap i l

" Window handling
nnoremap <C-W>u <C-W>k|xnoremap <C-W>u <C-W>k
nnoremap <C-W>e <C-W>j|xnoremap <C-W>e <C-W>j
nnoremap <C-W>n <C-W>h|xnoremap <C-W>n <C-W>h
nnoremap <C-W>i <C-W>l|xnoremap <C-W>i <C-W>l

" Words forward/backward
nnoremap l b|xnoremap l b
nnoremap L B|xnoremap L B
nnoremap y w|xnoremap y w
nnoremap Y W|xnoremap Y W
nnoremap o e|xnoremap o e
nnoremap O E|xnoremap O E
"    cnoremap <C-L> <C-Left>
"    cnoremap <C-Y> <C-Right>

" Insert/Replace/append
nnoremap s i|nnoremap S I|xnoremap S I
nnoremap t a|nnoremap T A
nnoremap p o|nnoremap P O

" Change
nnoremap w c|xnoremap w c
nnoremap W C|xnoremap W C
nnoremap ww cc

" Undo/redo
nnoremap z u|xnoremap z :<C-U>undo<CR>
nnoremap gz U|xnoremap gz :<C-U>undo<CR>
nnoremap Z <C-R>|xnoremap Z :<C-U>redo<CR>

" Visual mode {{{
nnoremap a v|xnoremap a v
nnoremap A V|xnoremap A V
nnoremap <C-A> <C-V>|xnoremap <C-A> <C-V>

" Search
"    " f/F are unchanged
"    nnoremap p t|xnoremap p t
"    nnoremap P T|xnoremap P T
"    nnoremap b ;|xnoremap b ;
"    nnoremap B ,|xnoremap B ,
nnoremap k n| xnoremap k n
nnoremap K N| xnoremap K N

"" inneR text objects {{{
"    " E.g. dip (delete inner paragraph) is now drp
"    onoremap r i
"" Folds, etc. {{{
"    nnoremap j z|xnoremap j z|
"    nnoremap jn zj|xnoremap jn zj|
"    nnoremap je zk|xnoremap je zk|
"" }}}
"" Overridden keys must be prefixed with g {{{
"    nnoremap gX X|xnoremap gX X|
"    nnoremap gK K|xnoremap gK K|
"    nnoremap gL L|xnoremap gL L|
"" }}}

" Easy escape {{{
  inoremap jj <ESC>
  inoremap j<Space> j
" }}}

" Join the line {{{
  nnoremap E J
" }}}

" copy, cut and paste
xnoremap x d
nnoremap c y|xnoremap c y
nnoremap cc yy
nnoremap C y$|xnoremap C y
nnoremap v p|xnoremap v p
nnoremap V P|xnoremap V P
nnoremap <leader>c "+y|xnoremap <leader>c "+y
nnoremap <leader>C "+y$
nnoremap <leader>v "+p
nnoremap <leader>v "+P

" increment
nnoremap <C-R> <C-A>
