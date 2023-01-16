local M = {}

function M.setup()
  require("mason").setup()
  require("mason-lspconfig").setup({
    ensure_installed = {
      "eslint",
      "tsserver"
    }
  })
  require("mason-null-ls").setup()
end

return M
