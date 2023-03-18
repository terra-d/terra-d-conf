let g:mapleader = ","
let b:is_vscode_neovim = exists('g:vscode')

" Up/down/left/right
nnoremap u k
xnoremap u k
nnoremap e j
xnoremap e j
nnoremap n h
xnoremap n h
nnoremap i l
xnoremap i l

" move pagination
nnoremap <C-l> <C-b>
xnoremap <C-l> <C-b>
nnoremap <C-n> <C-f>
xnoremap <C-n> <C-f>

" Window handling
if b:is_vscode_neovim
  nnoremap <C-w>u <Cmd>call VSCodeNotify('workbench.action.focusAboveGroup')<CR>
  xnoremap <C-w>u <Cmd>call VSCodeNotify('workbench.action.focusAboveGroup')<CR>
  nnoremap <C-w>e <Cmd>call VSCodeNotify('workbench.action.focusBelowGroup')<CR>
  xnoremap <C-w>e <Cmd>call VSCodeNotify('workbench.action.focusBelowGroup')<CR>
  nnoremap <C-w>n <Cmd>call VSCodeNotify('workbench.action.focusLeftGroup')<CR>
  xnoremap <C-w>n <Cmd>call VSCodeNotify('workbench.action.focusLeftGroup')<CR>
  nnoremap <C-w>i <Cmd>call VSCodeNotify('workbench.action.focusRightGroup')<CR>
  xnoremap <C-w>i <Cmd>call VSCodeNotify('workbench.action.focusRightGroup')<CR>
else
  nnoremap <C-W>u <C-W>k
  xnoremap <C-W>u <C-W>k
  nnoremap <C-W>e <C-W>j
  xnoremap <C-W>e <C-W>j
  nnoremap <C-W>n <C-W>h
  xnoremap <C-W>n <C-W>h
  nnoremap <C-W>i <C-W>l
  xnoremap <C-W>i <C-W>l
endif

" Complement move
if b:is_vscode_neovim
  " Note: Congigured in VSCode
else
  inoremap <C-e> <C-n>
  cnoremap <C-e> <C-n>
  inoremap <C-u> <C-p>
  cnoremap <C-u> <C-p>
endif

" Words forward/backward
nnoremap l b
xnoremap l b
nnoremap L B
xnoremap L B
nnoremap y w
xnoremap y w
nnoremap Y W
xnoremap Y W
nnoremap o e
xnoremap o e
nnoremap O E
xnoremap O E
nnoremap h ge
xnoremap h ge
nnoremap H gE
xnoremap H gE

" Insert/Replace/append
nnoremap s i
nnoremap S I
xnoremap S I
nnoremap t a
nnoremap T A
nnoremap p o
nnoremap P O

" Change
nnoremap w c
xnoremap w c
nnoremap W C
xnoremap W C
nnoremap ww cw

" Undo/redo
nnoremap <nowait> z u
xnoremap z :<C-U>undo<CR>
nnoremap gz U
xnoremap gz :<C-U>undo<CR>
nnoremap <nowait> Z <C-R>
xnoremap Z :<C-U>redo<CR>

" Visual mode
nnoremap a v
xnoremap a v
nnoremap A V
xnoremap A V
nnoremap <C-A> <C-V>
xnoremap <C-A> <C-V>

" Search
nnoremap k n
xnoremap k n
nnoremap K N
xnoremap K N
onoremap gk gn
onoremap gK gN
nnoremap ? /\v
cnoremap %s/ %s/\v
cnoremap %<Space> %
nnoremap <Esc><Esc> <cmd>nohlsearch<CR>

"" inneR text objects {{{
"    " E.g. dip (delete inner paragraph) is now drp
"    onoremap r i
"" Folds, etc. {{{
"    nnoremap j z
"    xnoremap j z
"
"    nnoremap jn zj
"    xnoremap jn zj
"
"    nnoremap je zk
"    xnoremap je zk
"
"" }}}
"" Overridden keys must be prefixed with g {{{
"    nnoremap gX X
"    xnoremap gX X
"
"    nnoremap gK K
"    xnoremap gK K
"
"    nnoremap gL L
"    xnoremap gL L
"
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
nnoremap c y
xnoremap c y
nnoremap cc yy
nnoremap C y$
xnoremap C y
nnoremap v p
xnoremap v p
nnoremap V P
xnoremap V P
nnoremap <leader>c "+y
xnoremap <leader>c "+y
nnoremap <leader>C "+y$
nnoremap <leader>v "+p
nnoremap <leader>v "+P

" increment
nnoremap <C-R> <C-A>

