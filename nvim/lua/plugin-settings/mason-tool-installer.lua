local M = {}

function M.setup()
  require("mason-tool-installer").setup({
    ensure_installed = require("lsp.packages"),
    auto_update = true,
    run_on_start = true,
  })

  vim.api.nvim_create_autocmd("User", {
    pattern = "MasonToolsStartingInstall",
    callback = function()
      vim.schedule(function()
        print("mason-tool-installer is starting")
      end)
    end,
  })

  vim.api.nvim_create_autocmd("User", {
    pattern = "MasonToolsUpdateCompleted",
    callback = function(e)
      vim.schedule(function()
        print(vim.inspect(e.data)) -- print the table that lists the programs that were installed
      end)
    end,
  })
end

return M
