" font
Guifont! Ricty Diminished for Powerline:h13

" color theme
let $NVIM_TUI_ENABLE_TRUE_COLOR=1
set background=dark
colorscheme solarized_nvimqt

if has("unix")
  set shell=zsh
elseif has("win64")
  set shell=pwsh.exe
endif

" move the current directory
lcd %:p:h

