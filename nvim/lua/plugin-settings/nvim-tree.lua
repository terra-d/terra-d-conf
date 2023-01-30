local M = {}

function M.setup()
  require("nvim-tree").setup {
    sort_by = "case_sensitive",
    view = {
      adaptive_size = true,
      mappings = {
        list = {
        },
      },
    },
    renderer = {
      group_empty = true,
    },
    filters = {
      dotfiles = true,
    }
  }
end

return M