local configration_path = "/absolute/path/of/this-directly"
package.path = package.path .. ";" .. configration_path .. "/lua/?.lua"

-- keep vimscript to use both vim and VSCode 
local rcpath = configration_path .. "/rc/keymaps.vim"
vim.cmd('source ' .. rcpath)

require('setup')
