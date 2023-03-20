CONFIGRATION_PATH = "/absolute/path/of/this-directly"
package.path = package.path .. ";" .. CONFIGRATION_PATH .. "/lua/?.lua"

-- keep vimscript to use both vim and VSCode
local rcpath = CONFIGRATION_PATH .. "/rc/keymaps.vim"
vim.cmd("source " .. rcpath)

require("setup")
