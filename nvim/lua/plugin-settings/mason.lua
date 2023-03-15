local M = {}
local map = require("utils").map
local augroup = vim.api.nvim_create_augroup("LspFormatting", {})
local capabilities = require("cmp_nvim_lsp").default_capabilities()

local lsp_servers = {
  eslint = {
    settings = {
      capabilities = capabilities,
    },
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
        capabilities = capabilities,
      },
    },
  },
  pyright = {
    settings = {
      capabilities = capabilities,
    },
  },
}

function M.setup()
  require("mason").setup()
  require("mason-lspconfig").setup({
    ensure_installed = vim.tbl_keys(lsp_servers),
  })
  for _, server in ipairs(vim.tbl_keys(lsp_servers)) do
    require("lspconfig")[server].setup(lsp_servers[server])
  end

  local mason_null_ls = require("mason-null-ls")
  mason_null_ls.setup({
    ensure_installed = {
      "stylua",
    },
    automatic_installation = false,
    automatic_setup = true,
  })
  mason_null_ls.setup_handlers({})
  require("null-ls").setup({
    sources = {
      -- Anything not supported by mason.
    },
    on_attach = function(client, bufnr)
      if client.supports_method("textDocument/formatting") then
        vim.api.nvim_clear_autocmds({ group = augroup, buffer = bufnr })
        vim.api.nvim_create_autocmd("BufWritePre", {
          group = augroup,
          buffer = bufnr,
          callback = function()
            vim.lsp.buf.format()
          end,
        })
      end
    end,
  })

  map("n", "<leader>F", function()
    vim.lsp.buf.format()
  end)
end

return M
