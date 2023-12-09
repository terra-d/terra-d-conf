local M = {}

function M.setup()
  require("mason-tool-installer").setup({
    ensure_installed = {
      -- lua
      "lua-language-server",
      "stylua",
      "luacheck",
    },
  })
end

return M
