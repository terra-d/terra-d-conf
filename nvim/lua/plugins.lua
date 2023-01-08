return {
  -- Portable package manager to install LSP & DAP servers,
  -- linters and formatters
  {
    "williamboman/mason.nvim",
  },
  -- A File Explorer For Neovim Written In Lua
  {
    "nvim-tree/nvim-tree.lua",
    dependencies = {"nvim-tree/nvim-web-devicons"},
    config = require("plugin-settings.nvim-tree"),
  },
}
