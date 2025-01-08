local M = {}
-- local noremap = require("utils").noremap
local orgmode = require("orgmode")

function M.setup()
  orgmode.setup({
    org_agenda_files = "~/orgfiles/**/*",
    org_default_notes_file = "~/orgfiles/refile.org",
    org_todo_keywords = { "TODO", "DOING", "REVIEWING", "DELEGATED", "|", "DONE", "DEFERRED" },
    org_todo_keyword_faces = {
      REVIEWING = ":foreground blue :weight bold",
      DELEGATED = ":background #FFFFFF :slant italic :underline on",
      DEFERRED = ":background #000000 :foreground red", -- overrides builtin color for `TODO` keyword
    },
    org_archive_location = "~/orgfiles/archive/%s_archive::",
  })
end

return M
