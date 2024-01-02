local M = {}
local map = require("utils").map

function M.setup()
  map("n", "z", "<Plug>(RepeatUndo)")
  map("n", "<C-z>", "<Plug>(RepeatUndoLine)")
  map("n", "Z", "<Plug>(RepeatRedo)")
end

return M
