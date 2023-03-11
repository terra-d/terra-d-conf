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
  map("o", "f", function()
     hop.hint_char1({ direction = directions.AFTER_CURSOR, current_line_only = true })
  end)
  map("n", "F", function()
     hop.hint_char1({ direction = directions.BEFORE_CURSOR, current_line_only = true })
  end)
  map("x", "F", function()
     hop.hint_char1({ direction = directions.BEFORE_CURSOR, current_line_only = true })
  end)
  map("n", "<leader>f", "<cmd>HopWordMW<CR>")
  map("x", "<leader>f", "<cmd>HopWordMW<CR>")
  map("n", "<leader>/", "<cmd>HopPatternMW<CR>")
  map("x", "<leader>/", "<cmd>HopPatternMW<CR>")
end

return M
