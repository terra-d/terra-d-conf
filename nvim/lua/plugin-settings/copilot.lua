local M = {}
local noremap = require("utils").noremap

function M.setup()
  vim.g.copilot_assume_mapped = true
  vim.g.copilot_no_tab_map = true

  noremap("i", "<C-I>", 'copilot#Accept("<CR>")', { expr = true })

  -- copilot.lua
  -- require("copilot").setup({
  --   suggestion = { enabled = true },
  --   panel = { auto_trigger = true, enabled = true },
  --   node = "~/.local/share/rtx/installs/node/18/bin/node",
  -- })
end

return M
