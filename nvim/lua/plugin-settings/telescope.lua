local M = {}
local noremap = require("utils").noremap
local actions = require("telescope.actions")
local telescope = require("telescope")

function M.setup()
  telescope.setup({
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

  telescope.load_extension("frecency")

  noremap("n", "<leader><leader>", "<cmd>Telescope frecency<cr>")
  noremap("n", "<space>f", "<cmd>Telescope find_files<cr>")
  noremap("n", "<leader>F", "<cmd>Telescope live_grep<cr>")
end

return M
