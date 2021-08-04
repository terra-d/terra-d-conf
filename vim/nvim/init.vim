" Make Vim non-compatible with old-Vim
if &compatible
  set nocompatible
endif

" leader
nnoremap <Space> <nop>
let g:mapleader = "\<Space>"

" variable settings _/_/_/_/_/_/_/_/
" get the file path of configrations
let s:base_dir = expand('<sfile>:p:h') 
let g:rc_dir = s:base_dir.'/rc'

let s:dein_repo_dir = s:base_dir.'/.dein/repos/github.com/Shougo/dein.vim'
let s:dein_cashe_dir = s:base_dir.'/.dein/cache'
let s:dein_toml = s:base_dir.'/dein.toml'
let s:dein_lazy_toml = s:base_dir.'/deinlazy.toml'
let s:dein_ft_toml = s:base_dir.'/deinft.toml'

" dein settings /_/_/_/_/_/_/_/_/_/_/_/
" If dein.vim does not exist, clone the ripository and install
if match(&runtimepath, 'dein.vim')
  if !isdirectory(s:dein_repo_dir)
    execute '!git clone https://github.com/Shougo/dein.vim' s:dein_repo_dir
 endif
  " Required:
  " Add the dein installation direcrory into runtimepath
  execute 'set runtimepath^='.s:dein_repo_dir
endif
 
" Load configrations
let g:dein#inline_vimrcs = [s:base_dir.'/mappings.vim']

" Required:
if dein#load_state(s:dein_cashe_dir)
  call dein#begin(s:dein_cashe_dir, [
    \ expand('<sfile>'), s:dein_toml, s:dein_lazy_toml, s:dein_ft_toml
    \ ])


  " Load TOML
  call dein#load_toml(s:dein_toml, {'lazy': 0})
  call dein#load_toml(s:dein_lazy_toml, {'lazy' : 1})
  call dein#load_toml(s:dein_ft_toml)

  call dein#end()
endif

" If you want to install not installed plugins on startup.
if dein#check_install()
  call dein#install()
endif
" End dein settings _______________________/

" color scheme for terminals
if !has('gui')
  colorscheme Tomorrow-Night
endif

filetype plugin indent on
syntax enable

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

" set background=dark
" if !has("gui_running")
"     "set term=xterm
"     set t_Co=256
"     let &t_AB="\e[48;5;%dm"
"     let &t_AF="\e[38;5;%dm"
" endif

set backspace=indent,eol,start
set number
set autoindent
set tabstop=2
set shiftwidth=2
set expandtab " white space
set splitright
set hls

