" NOTE: Do NOT use combine oparator '|' to work with VSCode

" Up/down/left/right {{{
  nnoremap n j
  xnoremap n j
  onoremap n j
  nnoremap e k
  xnoremap e k
  onoremap e k
  nnoremap i l
  xnoremap i l
  onoremap i l
" }}}

"" Words forward/backward {{{
"    " l/L = back word/WORD
"    " u/U = end of word/WORD
"    " y/Y = forward word/WORD
"    nnoremap l b|xnoremap l b|onoremap l b|
"    nnoremap L B|xnoremap L B|onoremap L B|
"    nnoremap u e|xnoremap u e|onoremap u e|
"    nnoremap U E|xnoremap U E|onoremap U E|
"    nnoremap y w|xnoremap y w|onoremap y w|
"    nnoremap Y W|xnoremap Y W|onoremap Y W|
"    cnoremap <C-L> <C-Left>
"    cnoremap <C-Y> <C-Right>
"" }}}

" inSert/Replace/append (T) {{{
  nnoremap s i
  nnoremap S I
"    nnoremap t a|
"    nnoremap T A|
" }}}

"" Change {{{
"    nnoremap w c|xnoremap w c|
"    nnoremap W C|xnoremap W C|
"    nnoremap ww cc|
"" }}}
"" Cut/copy/paste {{{
"    nnoremap x x|xnoremap x d|
"    nnoremap c y|xnoremap c y|
"    nnoremap v p|xnoremap v p|
"    nnoremap X dd|xnoremap X d|
"    nnoremap C yy|xnoremap C y|
"    nnoremap V P|xnoremap V P|
"    nnoremap gv gp|xnoremap gv gp|
"    nnoremap gV gP|xnoremap gV gP|
"" }}}
"" Undo/redo {{{
"    nnoremap z u|xnoremap z :<C-U>undo<CR>|
"    nnoremap gz U|xnoremap gz :<C-U>undo<CR>|
"    nnoremap Z <C-R>|xnoremap Z :<C-U>redo<CR>|
"" }}}
"" Visual mode {{{
"    nnoremap a v|xnoremap a v|
"    nnoremap A V|xnoremap A V|
"    nnoremap ga gv
"    " Make insert/add work also in visual line mode like in visual block mode
"    xnoremap <silent> <expr> s (mode() =~# "[V]" ? "\<C-V>0o$I" : "I")
"    xnoremap <silent> <expr> S (mode() =~# "[V]" ? "\<C-V>0o$I" : "I")
"    xnoremap <silent> <expr> t (mode() =~# "[V]" ? "\<C-V>0o$A" : "A")
"    xnoremap <silent> <expr> T (mode() =~# "[V]" ? "\<C-V>0o$A" : "A")
"" }}}
" Search {{{
"    " f/F are unchanged
"    nnoremap p t|xnoremap p t|onoremap p t|
"    nnoremap P T|xnoremap P T|onoremap P T|
"    nnoremap b ;|xnoremap b ;|onoremap b ;|
"    nnoremap B ,|xnoremap B ,|onoremap B ,|
  nnoremap k n
  xnoremap k n
  onoremap k n
  nnoremap K N
  xnoremap K N
" }}}

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

" Window handling {{{
  nnoremap <C-W>h <C-W>h
  xnoremap <C-W>h <C-W>u
  nnoremap <C-W>n <C-W>j
  xnoremap <C-W>n <C-W>u
  nnoremap <C-W>e <C-W>k
  xnoremap <C-W>e <C-W>u
  nnoremap <C-W>i <C-W>l
  xnoremap <C-W>i <C-W>u
" }}}

" Easy escape {{{
  inoremap jj <ESC>
  inoremap j<Space> j
" }}}

" copy and paste {{{
  vnoremap <leader>y "+y
  nnoremap <leader>Y "+yg_
  nnoremap <leader>y "+y
  nnoremap <leader>p "+p
  nnoremap <leader>P "+P
" }}}
