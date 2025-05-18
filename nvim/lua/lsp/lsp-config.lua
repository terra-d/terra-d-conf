local M = {}
local noremap = require("utils").noremap

function M.setup()
  vim.lsp.config["lua_ls"] = {
    filetypes = { "lua" },
    root_markers = {
      ".luarc.json",
      ".luarc.jsonc",
      ".luacheckrc",
      ".stylua.toml",
      "stylua.toml",
      "selene.toml",
      "selene.yml",
      ".git",
    },
    settings = {
      Lua = {
        runtime = {
          version = "LuaJIT",
          pathStrict = true,
          path = { "?.lua", "?/init.lua" },
        },
        diagnostics = {
          globals = { "vim" },
        },
      },
    },
  }

  noremap("n", "<space>n", vim.diagnostic.open_float)
  noremap("n", "<space>[", vim.diagnostic.goto_prev)
  noremap("n", "<space>]", vim.diagnostic.goto_next)
  noremap("n", "<space>M", vim.diagnostic.setloclist)

  -- Use LspAttach autocommand to only map the following keys
  -- after the language server attaches to the current buffer
  vim.api.nvim_create_autocmd("LspAttach", {
    group = vim.api.nvim_create_augroup("UserLspConfig", {}),
    callback = function(ev)
      -- Enable completion triggered by <c-x><c-o>
      vim.bo[ev.buf].omnifunc = "v:lua.vim.lsp.omnifunc"

      -- Buffer local mappings.
      -- See `:help vim.lsp.*` for documentation on any of the below functions
      local opts = { buffer = ev.buf }
      noremap("n", "<space>D", vim.lsp.buf.declaration, opts)
      noremap("n", "<space>d", vim.lsp.buf.definition, opts)
      noremap("n", "N", vim.lsp.buf.hover, opts)
      noremap("n", "<space>i", vim.lsp.buf.implementation, opts)
      noremap("n", "<space>n", vim.lsp.buf.signature_help, opts)
      noremap("n", "<space>wa", vim.lsp.buf.add_workspace_folder, opts)
      noremap("n", "<space>wr", vim.lsp.buf.remove_workspace_folder, opts)
      noremap("n", "<space>wl", function()
        print(vim.inspect(vim.lsp.buf.list_workspace_folders()))
      end, opts)
      noremap("n", "<space>t", vim.lsp.buf.type_definition, opts)
      noremap("n", "<space>R", vim.lsp.buf.rename, opts)
      noremap("n", "<space>.", vim.lsp.buf.code_action, opts)
      noremap("n", "<space>r", vim.lsp.buf.references, opts)
      noremap("n", "<leader>f", function()
        vim.lsp.buf.format({ async = true })
      end, opts)
    end,
  })
end

return M
