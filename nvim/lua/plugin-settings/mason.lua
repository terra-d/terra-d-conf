local M = {}

local lsp_servers = {
  pyright = {}
}

function M.setup()
  require("mason").setup()
  require("mason-lspconfig").setup({
    ensure_installed = vim.tbl_keys(lsp_servers)
  })
  require("mason-null-ls").setup()

  for _, server in ipairs(vim.tbl_keys(lsp_servers)) do
    require("lspconfig")[server].setup(lsp_servers[server])
  end
end

return M
