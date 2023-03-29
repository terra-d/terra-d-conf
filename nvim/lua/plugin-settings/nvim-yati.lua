local M = {}

function M.setup()
  require("nvim-treesitter.configs").setup({
    yati = {
      enable = true,
      default_lazy = true,
      default_fallback = "auto",
    },
    indent = {
      enable = true,
    },
  })
end

return M
