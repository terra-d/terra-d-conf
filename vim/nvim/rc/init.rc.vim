" leader
nnoremap , <nop>
let g:mapleader = ","

" color scheme for terminals
if !has('gui')
  colorscheme Tomorrow-Night
endif

set list
" setting specific to OS
if has('win32') || has('win64')
  " 'python3' command doesn't exsist in Windows
  let g:python3_host_prog = 'python'
  " Show <TAB> and <CR>
  set listchars=tab:>-,trail:-,precedes:<
else
  " Show <TAB> and <CR>
  set listchars=tab:▸\ ,trail:-,precedes:«,nbsp:%
endif

