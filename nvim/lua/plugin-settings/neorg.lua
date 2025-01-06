local M = {}
local noremap = require("utils").noremap
local neorg = require("neorg")

function M.setup()
  neorg.setup({
    load = {
      ["core.defaults"] = {},
      ["core.concealer"] = {},
      ["core.dirman"] = {
        config = {
          workspaces = {
            notes = "~/orgfiles",
          },
          default_workspace = "notes",
        },
      },
    },
  })

  noremap("n", "<M-t>", "<Plug>(neorg.qol.todo-items.todo.task-cycle)")
end

return M
