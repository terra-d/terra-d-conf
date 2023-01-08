-- keep vimscript to use both vim and VSCode 
local rcpath = vim.fn.stdpath("config") .. "/rc"
vim.cmd('source ' .. rcpath .. "/keymaps.vim")

require('setup')
