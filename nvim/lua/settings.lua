local opt = vim.opt

-- No compatible
opt.compatible = false

-- Syntax highlighting
opt.syntax = "on"

-- disable netrw for nvim-tree
vim.g.loaded_netrw = 1
vim.g.loaded_netrwPlugin = 1

-- Set true colors inside nvim
opt.termguicolors = true

-- Set hybrid line numbers
opt.number = true

-- Indantation
opt.expandtab = true
opt.tabstop = 2
opt.shiftwidth = 2
opt.autoindent = true
opt.smartindent = true

-- Search rules
opt.ignorecase = true
opt.smartcase = true
opt.incsearch = true

-- This provides live feedback when substituting
opt.inccommand = "split"

-- Open new splits/windows always below and right
opt.splitbelow = true
opt.splitright = true

-- Set automatic wrap to display lines in next line (this is the default)
opt.wrap = true

-- Text with conceal syntax will be hidden
opt.conceallevel = 0

-- Set default encoding
opt.encoding = "UTF-8"

-- Set the fileformat to unix because windows line endings are bad
opt.fileformat = "unix"

-- This option will render characters for spaces, tabs etc
opt.list = true
opt.listchars = {
  space = "⋅",
  --    tab = "»·",
  --    trail = "·",
  --    nbsp = "␣",
  --    extends = "⟩",
  --    precedes = "⟨",
}

-- Set persistent undo
opt.undofile = true

-- Disable swapfiles
opt.swapfile = false

-- Set the title's window to the value of titltestring
opt.title = true

-- mute beep sounds
opt.visualbell = true
