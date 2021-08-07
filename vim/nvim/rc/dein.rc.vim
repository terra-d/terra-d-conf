" variable settings (dein.vim) _/_/_/_/_/_/_/_/
let s:dein_repo_dir = g:base_dir.'/.dein/repos/github.com/Shougo/dein.vim'
let s:dein_cashe_dir = g:base_dir.'/.dein/cache'
let s:dein_toml = g:base_dir.'/dein.toml'
let s:dein_lazy_toml = g:base_dir.'/deinlazy.toml'
let s:dein_ft_toml = g:base_dir.'/deinft.toml'

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
let g:dein#inline_vimrcs = [g:base_dir.'/mappings.vim']

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

if dein#check_install()
  call dein#install()
endif
