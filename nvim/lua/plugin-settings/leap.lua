local M = {}
local map = require("utils").map
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

  map("n", "j", "<Plug>(leap-forward)")
  map("x", "j", "<Plug>(leap-forward)")
  map("o", "j", "<Plug>(leap-forward)")
  map("n", "J", "<Plug>(leap-backward)")
  map("x", "J", "<Plug>(leap-backward)")
  map("o", "J", "<Plug>(leap-backward)")
  map("x", "x", "<Plug>(leap-forward-till)")
  map("o", "x", "<Plug>(leap-forward-till)")
  map("x", "X", "<Plug>(leap-backward-till)")
  map("o", "X", "<Plug>(leap-backward-till)")
  map("n", "gj", "<Plug>(leap-from-window)")
  map("x", "gj", "<Plug>(leap-from-window)")
  map("o", "gj", "<Plug>(leap-from-window)")
end

return M
