local M = {}
local map = require("utils").map

function M.setup()
  local hop = require("hop")
  hop.setup()

  map("n", "f", function()
    hop.hint_char1({ current_line_only = true })
  end)
  map("x", "f", function()
    hop.hint_char1({ current_line_only = true })
  end)
  map("n", "<leader>f", ":HopWordMW<CR>")
  map("x", "<leader>f", ":HopWordMW<CR>")
  map("n", "<leader>/", ":HopPatternMW<CR>")
  map("x", "<leader>/", ":HopPatternMW<CR>")
end

return M
