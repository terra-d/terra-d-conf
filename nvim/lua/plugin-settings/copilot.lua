local M = {}

function M.setup()
  require("copilot").setup({
    suggestion = { enabled = false },
    panel = { enabled = false },
    node = "~/.local/share/rtx/installs/node/18/bin/node",
  })
end

return M
