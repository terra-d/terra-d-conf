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
    opts = require("plugin-settings.indent-blankline"),
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
      "nvim-lua/plenary.nvim",
      "williamboman/mason-lspconfig.nvim",
      "jose-elias-alvarez/null-ls.nvim",
      "jayp0521/mason-null-ls.nvim",
      "neovim/nvim-lspconfig",
    },
    config = function()
      require("plugin-settings.mason").setup()
    end,
  },
  -- A File Explorer For Neovim Written In Lua
  {
    "nvim-neo-tree/neo-tree.nvim",
    dependencies = {
      "nvim-lua/plenary.nvim",
      "nvim-tree/nvim-web-devicons",
      "MunifTanjim/nui.nvim",
    },
    opts = require("plugin-settings.neo-tree"),
  },
}
