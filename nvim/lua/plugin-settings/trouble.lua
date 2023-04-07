local M = {}
local map = require("utils").map

function M.setup()
  require("trouble").setup({
    action_keys = {
      open_split = { "<C-s>" },
      open_vsplit = { "<C-v>" },
      open_tab = { "<C-t>" },
      jump_close = { "o" },
      previous = { "u" },
      next = { "e" },
      first = { "gu" },
      last = { "ge" },
    },
  })

  map("n", "<leader>xx", "<cmd>TroubleToggle<cr>")
  map("n", "<leader>xw", "<cmd>TroubleToggle workspace_diagnostics<cr>")
  map("n", "<leader>xd", "<cmd>TroubleToggle document_diagnostics<cr>")
  map("n", "<leader>xl", "<cmd>TroubleToggle loclist<cr>")
  map("n", "<leader>xq", "<cmd>TroubleToggle quickfix<cr>")
  map("n", "gR", "<cmd>TroubleToggle lsp_references<cr>")
end

return M
