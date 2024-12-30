local M = {}

function M.setup()
  require("nvim-treesitter.configs").setup({
    ensure_installed = "all",
    ignore_install = { "org" },
    auto_install = true,
    highlight = { enable = true },
    indent = { enable = false },
    incremental_selection = {
      enable = true,
      keymaps = {
        init_selection = "gnn",
        node_incremental = "grn",
        scope_incremental = "grc",
        node_decremental = "grm",
      },
    },
    yati = {
      enable = true,
      default_lazy = true,
      default_fallback = "auto",
      indent = { enable = true },
    },
    tree_setter = { enable = true },
  })
end

return M
