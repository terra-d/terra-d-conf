local M = {}
local noremap = require("utils").noremap
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

  noremap("n", "<leader>G", "<cmd>Neogit<CR>")
end

return M
