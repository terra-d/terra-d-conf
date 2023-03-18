local M = {}
local capabilities = require("cmp_nvim_lsp").default_capabilities()

local lsp_servers = {
  eslint = {
    settings = {},
    capabilities = capabilities,
  },
  lua_ls = {
    settings = {
      Lua = {
        runtime = {
          -- Tell the language server which version of Lua
          -- you're using (most likely LuaJIT in the case of Neovim)
          version = "LuaJIT",
        },
        diagnostics = {
          -- Get the language server to recognize the `vim` global
          globals = { "vim" },
        },
      },
      capabilities = capabilities,
    },
  },
  pyright = {
    settings = {},
    capabilities = capabilities,
  },
}

function M.setup()
  require("mason-lspconfig").setup({
    ensure_installed = vim.tbl_keys(lsp_servers),
  })
  for _, server in ipairs(vim.tbl_keys(lsp_servers)) do
    require("lspconfig")[server].setup(lsp_servers[server])
  end
end

return M
