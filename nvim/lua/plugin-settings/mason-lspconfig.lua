local M = {}
local mason_lspconfig = require("mason-lspconfig")
local capabilities = require("cmp_nvim_lsp").default_capabilities()

function M.setup()
  mason_lspconfig.setup()
end

return M
