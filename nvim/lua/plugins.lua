return {
  -- A highly customizable theme for vim and neovim
  {
    "EdenEast/nightfox.nvim",
    config = function()
      require("nightfox").setup()
      vim.cmd("colorscheme nightfox")
    end,
  },
  -- Showing indent lines
  {
    "lukas-reineke/indent-blankline.nvim",
    dependencies = {
      "nvim-treesitter/nvim-treesitter",
    },
    config = require("plugin-settings.indent-blankline"),
  },
  -- Easymotion
  {
    "phaazon/hop.nvim",
    branch = "v2",
    config = function()
      require("plugin-settings.hop").setup()
    end,
  },
  -- Portable package manager to install LSP & DAP servers,
  -- linters and formatters
  {
    "williamboman/mason.nvim",
    dependencies = {
      "williamboman/mason-lspconfig.nvim",
      "jayp0521/mason-null-ls.nvim",
      "neovim/nvim-lspconfig",
    },
    config = function()
      require("plugin-settings.mason").setup()
    end,
  },
  -- A File Explorer For Neovim Written In Lua
  {
    "nvim-tree/nvim-tree.lua",
    dependencies = {"nvim-tree/nvim-web-devicons"},
    config = require("plugin-settings.nvim-tree"),
  },
}
