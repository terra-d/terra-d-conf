local M = {}
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
end

return M
