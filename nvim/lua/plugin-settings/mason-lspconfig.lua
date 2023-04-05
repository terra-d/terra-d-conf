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
    ["lua_ls"] = function()
      lspconfig["lua_ls"].setup({
        settings = {
          Lua = {
            runtime = {
              version = "LuaJIT",
            },
            diagnostics = {
              globals = { "vim" },
            },
          },
        },
        capabilities = capabilities,
      })
    end,
  })
end

return M
