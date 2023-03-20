local M = {}
local map = require("utils").map

function M.setup()
  map("n", "<space>e", vim.diagnostic.open_float)
  map("n", "[d", vim.diagnostic.goto_prev)
  map("n", "]d", vim.diagnostic.goto_next)
  map("n", "<leader>M", vim.diagnostic.setloclist)

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
      map("n", "gD", vim.lsp.buf.declaration, opts)
      map("n", "gd", vim.lsp.buf.definition, opts)
      map("n", "N", vim.lsp.buf.hover, opts)
      map("n", "gi", vim.lsp.buf.implementation, opts)
      map("n", "<C-k>", vim.lsp.buf.signature_help, opts)
      map("n", "<space>wa", vim.lsp.buf.add_workspace_folder, opts)
      map("n", "<space>wr", vim.lsp.buf.remove_workspace_folder, opts)
      map("n", "<space>wl", function()
        print(vim.inspect(vim.lsp.buf.list_workspace_folders()))
      end, opts)
      map("n", "<space>D", vim.lsp.buf.type_definition, opts)
      map("n", "<space>rn", vim.lsp.buf.rename, opts)
      map("n", "<space>ca", vim.lsp.buf.code_action, opts)
      map("n", "gr", vim.lsp.buf.references, opts)
      map("n", "<space>f", function()
        vim.lsp.buf.format({ async = true })
      end, opts)
    end,
  })
end

return M
