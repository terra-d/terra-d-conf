local M = {}
local capabilities = require("cmp_nvim_lsp").default_capabilities()

function M.setup()
  local mason_lspconfig = require("mason-lspconfig")
  mason_lspconfig.setup()
  mason_lspconfig.setup_handlers({
    function(server_name)
      require("lspconfig")[server_name].setup({
        capabilities = capabilities,
      })
    end,
    ["lua_ls"] = function()
      require("lspconfig")["lua_ls"].setup({
        settings = {
          Lua = {
            runtime = {
              version = "LuaJIT",
            },
            diagnostics = {
              globals = { "vim" },
            },
          },
          capabilities = capabilities,
        },
      })
    end,
  })
end

return M
