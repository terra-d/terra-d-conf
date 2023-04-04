CONFIGRATION_PATH = vim.fn.stdpath("config")

local rcpath = CONFIGRATION_PATH .. "/rc/keymaps.vim"
vim.cmd("source " .. rcpath)

require("setup")
