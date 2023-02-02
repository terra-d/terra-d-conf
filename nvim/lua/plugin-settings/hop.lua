local M = {}
local map = require("utils").map

function M.setup()
  local hop = require("hop")
  hop.setup()
  local directions = require("hop.hint").HintDirection

  map("n", "f", function()
    hop.hint_char1({ current_line_only = true })
  end)
  map("n", "<leader>f", ":HopWordMW<CR>")
  map("n", "<leader>/", ":HopPatternMW<CR>")
end

return M
