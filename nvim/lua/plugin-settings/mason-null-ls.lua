local M = {}
local augroup = vim.api.nvim_create_augroup("LspFormatting", {})
local filetypes_not_formatted_on_save = { "javascript", "typescript", "vue" }

local function is_filetype_not_formatted_on_save(filetype)
  for _, ft in ipairs(filetypes_not_formatted_on_save) do
    if ft == filetype then
      return true
    end
  end
  return false
end

function M.setup()
  local mason_null_ls = require("mason-null-ls")
  local null_ls = require("null-ls")
  mason_null_ls.setup({
    ensure_installed = {
      -- Opt to list sources here, when available in mason.
    },
    automatic_installation = true,
    automatic_setup = true,
  })
  mason_null_ls.setup_handlers({
    function(source_name, methods)
      require("mason-null-ls.automatic_setup")(source_name, methods)
    end,
    stylua = function(source_name, methods)
      null_ls.register(null_ls.builtins.formatting.stylua)
    end,
  })

  require("null-ls").setup({
    sources = {
      -- Anything not supported by mason.
    },
    on_attach = function(client, bufnr)
      if
          not client.supports_method("textDocument/formatting") or is_filetype_not_formatted_on_save(vim.bo.filetype)
      then
        return
      end
      vim.api.nvim_clear_autocmds({ group = augroup, buffer = bufnr })
      vim.api.nvim_create_autocmd("BufWritePre", {
        group = augroup,
        buffer = bufnr,
        callback = function()
          vim.lsp.buf.format()
        end,
      })
    end,
  })
end

return M
