local M = {}
local map = require("utils").map

function M.setup()
  require("neogit").setup({
    mappings = {
      -- modify status buffer mappings
      status = {
        ["u"] = "",
        ["U"] = "",
        ["d"] = "Unstage",
        ["D"] = "UnstageStaged",
      }
    }
  })

   map("n", "<leader>G", "<cmd>Neogit<CR>")
end

return M
