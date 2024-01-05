local M = {}
local toggleterm = require("toggleterm")
local noremap = require("utils").noremap

function M.setup()
  toggleterm.setup({
    open_mapping = [[<C-/>]],
    autochdir = true,
  })

  noremap("t", "<Esc>", [[<C-\><C-n>]])
  noremap("t", "jk", [[<C-\><C-n>]])
  noremap("t", "<C-h>", [[<Cmd>wincmd h<CR>]])
  noremap("t", "<C-j>", [[<Cmd>wincmd j<CR>]])
  noremap("t", "<C-k>", [[<Cmd>wincmd k<CR>]])
  noremap("t", "<C-l>", [[<Cmd>wincmd l<CR>]])
  noremap("t", "<C-w>", [[<C-\><C-n><C-w>]])
end

return M
