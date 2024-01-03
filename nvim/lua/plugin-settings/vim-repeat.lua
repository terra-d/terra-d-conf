local M = {}
local map = require("utils").map

function M.setup()
  map("n", "z", "<Plug>(RepeatUndo)")
  map("n", "<C-z>", "<Plug>(RepeatUndoLine)")
  map("n", "Z", "<Plug>(RepeatRedo)")

  vim.cmd("source " .. vim.fn.stdpath("data") .. "/lazy/vim-repeat/autoload/repeat.vim")
end

return M
