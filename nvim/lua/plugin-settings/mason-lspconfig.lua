local M = {}
local lspconfig = require("lspconfig")
local mason_lspconfig = require("mason-lspconfig")
local capabilities = require("cmp_nvim_lsp").default_capabilities()

function M.setup()
  mason_lspconfig.setup()
  mason_lspconfig.setup_handlers({
    function(server_name)
      lspconfig[server_name].setup({
        capabilities = capabilities,
      })
    end,
    ["eslint"] = function()
      lspconfig["eslint"].setup({
        on_attach = function(_client, bufnr)
          vim.api.nvim_create_autocmd("BufWritePre", { buffer = bufnr, command = "EslintFixAll" })
        end,
        capabilities = capabilities,
      })
    end,
    ["lua_ls"] = function()
      lspconfig["lua_ls"].setup({
        capabilities = capabilities,
      })
    end,
  })
end

return M
