local M = {}
local map = require("utils").map

function M.setup()
  local hop = require("hop")
  hop.setup()
  local directions = require("hop.hint").HintDirection

  map("n", "f", function()
    hop.hint_char1({ direction = directions.AFTER_CURSOR, current_line_only = true })
  end)
  map('', 'F', function()
    hop.hint_char1({ direction = directions.BEFORE_CURSOR, current_line_only = true })
  end, {remap=true})
  map('', 'p', function()
    hop.hint_char1({ direction = directions.AFTER_CURSOR, current_line_only = true, hint_offset = -1 })
  end, {remap=true})
  map('', 'P', function()
    hop.hint_char1({ direction = directions.BEFORE_CURSOR, current_line_only = true, hint_offset = 1 })
  end, {remap=true})
end

return M
