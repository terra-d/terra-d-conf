local M = {}
local map = require("utils").map

function M.setup()
  local hop = require("hop")
  hop.setup()
  local directions = require('hop.hint').HintDirection

  map("n", "f", function()
     hop.hint_char1({ direction = directions.AFTER_CURSOR, current_line_only = true })
  end)
  map("x", "f", function()
     hop.hint_char1({ direction = directions.AFTER_CURSOR, current_line_only = true })
  end)
  map("n", "F", function()
     hop.hint_char1({ direction = directions.BEFORE_CURSOR, current_line_only = true })
  end)
  map("x", "F", function()
     hop.hint_char1({ direction = directions.BEFORE_CURSOR, current_line_only = true })
  end)
  map("n", "<leader>f", ":HopWordMW<CR>")
  map("x", "<leader>f", ":HopWordMW<CR>")
  map("n", "<leader>/", ":HopPatternMW<CR>")
  map("x", "<leader>/", ":HopPatternMW<CR>")
end

return M
