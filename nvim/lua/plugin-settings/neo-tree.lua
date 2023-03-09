local M = {}
local map = require("utils").map

function M.setup()
  require("neo-tree").setup({
    window = {
        mappings = {
            ["e"] = "none",
            ["s"] = "open_split",
            ["v"] = "open_vsplit",
        }
    },
  })

  map("n", "<leader>E", "<cmd>:NeoTreeShow<CR>")
end

return M
