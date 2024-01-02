local M = {}
local noremap = require("utils").noremap
local leap = require("leap")

function M.setup()
  leap.opts.max_phase_one_targets = nil
  leap.opts.highlight_unlabeled_phase_one_targets = false
  leap.opts.max_highlighted_traversal_targets = 10
  leap.opts.case_sensitive = false
  leap.opts.equivalence_classes = { " \t\r\n" }
  leap.opts.substitute_chars = {}
  -- leap.opts.safe_labels = { 's', 'f', 'n', 'u', 't', . . . }
  -- leap.opts.labels = { 's', 'f', 'n', 'j', 'k', . . . }
  leap.opts.special_keys = {
    repeat_search = "<enter>",
    next_phase_one_target = "<enter>",
    next_target = { "<enter>", ";" },
    prev_target = { "<tab>", "," },
    next_group = "<space>",
    prev_group = "<tab>",
    multi_accept = "<enter>",
    multi_revert = "<backspace>",
  }

  noremap("n", "h", "<Plug>(leap-forward)")
  noremap("x", "h", "<Plug>(leap-forward)")
  noremap("o", "h", "<Plug>(leap-forward)")
  noremap("n", "H", "<Plug>(leap-backward)")
  noremap("x", "H", "<Plug>(leap-backward)")
  noremap("o", "H", "<Plug>(leap-backward)")
  noremap("x", "x", "<Plug>(leap-forward-till)")
  noremap("o", "x", "<Plug>(leap-forward-till)")
  noremap("x", "X", "<Plug>(leap-backward-till)")
  noremap("o", "X", "<Plug>(leap-backward-till)")
  noremap("n", "gh", "<Plug>(leap-from-window)")
  noremap("x", "gh", "<Plug>(leap-from-window)")
  noremap("o", "gh", "<Plug>(leap-from-window)")
end

return M
