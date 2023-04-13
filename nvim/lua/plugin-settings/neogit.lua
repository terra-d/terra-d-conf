local M = {}
local map = require("utils").map

function M.setup()
  require("neogit").setup({
    mappings = {
      status = {
        ["u"] = "",
        ["U"] = "",
        ["t"] = "Unstage",
        ["T"] = "UnstageStaged",
      },
    },
    integrations = {
      diffview = true,
    },
  })

  map("n", "<leader>G", "<cmd>Neogit<CR>")
end

return M
