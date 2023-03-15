return {
  -- A highly customizable theme for vim and neovim
  {
    "EdenEast/nightfox.nvim",
    enabled = not IS_VSCODE_NEOVIM,
    config = function()
      require("nightfox").setup()
      vim.cmd("colorscheme nordfox")
    end,
  },
  -- tree-sitter
  {
    "nvim-treesitter/nvim-treesitter",
    enabled = not IS_VSCODE_NEOVIM,
    opts = require("plugin-settings.nvim-treesitter"),
  },
  -- Showing indent lines
  {
    "lukas-reineke/indent-blankline.nvim",
    enabled = not IS_VSCODE_NEOVIM,
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
    enabled = not IS_VSCODE_NEOVIM,
    dependencies = {
      "nvim-lua/plenary.nvim",
      "williamboman/mason-lspconfig.nvim",
      "jose-elias-alvarez/null-ls.nvim",
      "jayp0521/mason-null-ls.nvim",
      "neovim/nvim-lspconfig",
      "hrsh7th/cmp-nvim-lsp",
    },
    config = function()
      require("plugin-settings.mason").setup()
    end,
  },
  -- A File Explorer For Neovim Written In Lua
  {
    "nvim-neo-tree/neo-tree.nvim",
    enabled = not IS_VSCODE_NEOVIM,
    dependencies = {
      "nvim-lua/plenary.nvim",
      "nvim-tree/nvim-web-devicons",
      "MunifTanjim/nui.nvim",
    },
    config = function()
      require("plugin-settings.neo-tree").setup()
    end,
  },
  -- highly extendable fuzzy finder over lists
  {
    "nvim-telescope/telescope.nvim",
    enabled = not IS_VSCODE_NEOVIM,
    tag = "0.1.1",
    dependencies = { "nvim-lua/plenary.nvim" },
    config = function()
      require("plugin-settings.telescope").setup()
    end,
  },
  -- git plugin
  {
    "TimUntersberger/neogit",
    enabled = not IS_VSCODE_NEOVIM,
    dependencies = { "nvim-lua/plenary.nvim" },
    config = function()
      require("plugin-settings.neogit").setup()
    end,
  },
  -- displays a popup with possible key bindings of the command
  {
    "folke/which-key.nvim",
    enabled = not IS_VSCODE_NEOVIM,
    config = function()
      require("plugin-settings.which-key").setup()
    end,
  },
  -- Blazing fast indentation style detection for Neovim written in Lua
  {
    "NMAC427/guess-indent.nvim",
    enabled = not IS_VSCODE_NEOVIM,
    opts = require("plugin-settings.guess-indent"),
  },
  --A completion engine plugin for neovim written in Lua.
  {
    "hrsh7th/nvim-cmp",
    enabled = not IS_VSCODE_NEOVIM,
    dependencies = {
      "neovim/nvim-lspconfig",
      "L3MON4D3/LuaSnip",
      "saadparwaiz1/cmp_luasnip",
      "hrsh7th/cmp-buffer",
      "hrsh7th/cmp-path",
      "hrsh7th/cmp-cmdline",
      "petertriho/cmp-git",
      "L3MON4D3/LuaSnip",
      "saadparwaiz1/cmp_luasnip",
    },
    config = function()
      require("plugin-settings.nvim-cmp").setup()
    end,
  },

  -- copilot
  {
    "github/copilot.vim",
    enabled = not IS_VSCODE_NEOVIM,
  },
}
