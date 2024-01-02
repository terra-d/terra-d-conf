local M = {}
local noremap = require("utils").noremap

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

  noremap("n", "<leader>xx", "<cmd>TroubleToggle<cr>")
  noremap("n", "<leader>xw", "<cmd>TroubleToggle workspace_diagnostics<cr>")
  noremap("n", "<leader>xd", "<cmd>TroubleToggle document_diagnostics<cr>")
  noremap("n", "<leader>xl", "<cmd>TroubleToggle loclist<cr>")
  noremap("n", "<leader>xq", "<cmd>TroubleToggle quickfix<cr>")
  noremap("n", "gR", "<cmd>TroubleToggle lsp_references<cr>")
end

return M
