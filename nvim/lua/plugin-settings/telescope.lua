local M = {}
local map = require("utils").map
local is_vscode_neovim = vim.g.vscode

function M.setup()
  local builtin = require('telescope.builtin')
  local actions = require('telescope.actions')
  require("telescope").setup({
    defaults = {
      mappings = {
        n = {
          ["u"] = actions.move_selection_previous,
          ["e"] = actions.move_selection_next,
        }
      }
    }
  })

  if not is_vscode_neovim then
    map("n", "<leader>p", builtin.find_files)
  end
end

return M
