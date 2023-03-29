return {
  -- Note: I don't use the `t` and `T` keys, but I've left them in here
  -- https://github.com/ggandor/flit.nvim/issues/8
  keys = { f = "f", F = "F", t = "<M-9>", T = "<M-0>" },
  -- A string like "nv", "nvo", "o", etc.
  labeled_modes = "v",
  multiline = true,
  -- Like `leap`s similar argument (call-specific overrides).
  -- E.g.: opts = { equivalence_classes = {} }
  opts = {},
}
