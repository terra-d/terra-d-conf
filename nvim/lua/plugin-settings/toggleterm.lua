local M = {}
local toggleterm = require("toggleterm")

function M.setup()
  toggleterm.setup({
    open_mapping = [[<C-`>]],
  })
end

return M
