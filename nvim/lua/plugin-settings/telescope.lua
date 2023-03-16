local M = {}
local map = require("utils").map
local actions = require("telescope.actions")

function M.setup()
  require("telescope").setup({
    defaults = {
      mappings = {
        n = {
          ["u"] = actions.move_selection_previous,
          ["e"] = actions.move_selection_next,
          ["s"] = actions.select_horizontal,
          ["v"] = actions.select_vertical,
        },
        i = {
          ["<C-u>"] = actions.move_selection_previous,
          ["<C-e>"] = actions.move_selection_next,
          ["<C-s>"] = actions.select_horizontal,
        },
      },
    },
  })

  map("n", "<leader>p", "<cmd>Telescope find_files<cr>")
end

return M
