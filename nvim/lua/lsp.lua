local M = {}
local map = require("utils").map

function M.setup()
  map("n", "<space>n", vim.diagnostic.open_float)
  map("n", "<space>[", vim.diagnostic.goto_prev)
  map("n", "<space>]", vim.diagnostic.goto_next)
  map("n", "<space>M", vim.diagnostic.setloclist)

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
      map("n", "<space>D", vim.lsp.buf.declaration, opts)
      map("n", "<space>d", vim.lsp.buf.definition, opts)
      map("n", "N", vim.lsp.buf.hover, opts)
      map("n", "<space>i", vim.lsp.buf.implementation, opts)
      map("n", "<space>n", vim.lsp.buf.signature_help, opts)
      map("n", "<space>wa", vim.lsp.buf.add_workspace_folder, opts)
      map("n", "<space>wr", vim.lsp.buf.remove_workspace_folder, opts)
      map("n", "<space>wl", function()
        print(vim.inspect(vim.lsp.buf.list_workspace_folders()))
      end, opts)
      map("n", "<space>t", vim.lsp.buf.type_definition, opts)
      map("n", "<space>R", vim.lsp.buf.rename, opts)
      map("n", "<space>.", vim.lsp.buf.code_action, opts)
      map("n", "<space>r", vim.lsp.buf.references, opts)
      map("n", "<space>f", function()
        vim.lsp.buf.format({ async = true })
      end, opts)
    end,
  })
end

return M
