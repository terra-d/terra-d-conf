local M = {}
local map = require("utils").map
local neogit = require("neogit")

function M.setup()
  neogit.setup({
    mappings = {
      status = {
        ["o"] = "Unstage",
        ["O"] = "UnstageStaged",
        ["u"] = false,
        ["U"] = false,
      },
    },
    integrations = {
      diffview = true,
    },
  })

  map("n", "<leader>G", "<cmd>Neogit<CR>")
end

return M
