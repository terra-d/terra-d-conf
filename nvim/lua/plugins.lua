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
  -- A blazing fast and easy to configure Neovim statusline written in Lua.
  {
    "nvim-lualine/lualine.nvim",
    enabled = not IS_VSCODE_NEOVIM,
    dependencies = {
      "nvim-tree/nvim-web-devicons",
    },
    config = function()
      require("plugin-settings.lualine").setup()
    end,
  },
  -- Scrollbar for Neovim
  {
    "petertriho/nvim-scrollbar",
    enabled = not IS_VSCODE_NEOVIM,
    config = function()
      require("plugin-settings.nvim-scrollbar").setup()
    end,
  },
  -- tree-sitter
  {
    "nvim-treesitter/nvim-treesitter",
    enabled = not IS_VSCODE_NEOVIM,
    dependencies = {
      -- Yet another tree-sitter indent plugin for Neovim.
      "yioneko/nvim-yati",
    },
    opts = require("plugin-settings.nvim-treesitter"),
  },
  {
    "nvim-treesitter/nvim-treesitter-context",
    enabled = not IS_VSCODE_NEOVIM,
    dependencies = {
      "nvim-treesitter/nvim-treesitter",
    },
    opts = {},
  },
  -- Highlight arguments' definitions and usages, asynchronously, using Treesitter
  {
    "m-demare/hlargs.nvim",
    enabled = not IS_VSCODE_NEOVIM,
    depndencies = {
      "nvim-treesitter/nvim-treesitter",
    },
    opts = {},
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
  -- Leap is a general-purpose motion plugin
  {
    "ggandor/leap.nvim",
    dependencies = {
      "tpope/vim-repeat",
    },
    config = function()
      require("plugin-settings.leap").setup()
    end,
  },
  -- f/F/t/T motions on steroids, building on the Leap interface.
  {
    "ggandor/flit.nvim",
    dependencies = {
      "ggandor/leap.nvim",
    },
    opts = require("plugin-settings.flit"),
  },
  {
    "windwp/nvim-autopairs",
    enabled = not IS_VSCODE_NEOVIM,
    opts = {},
  },
  -- Portable package manager to install LSP & DAP servers,
  -- linters and formatters
  {
    "williamboman/mason.nvim",
    enabled = not IS_VSCODE_NEOVIM,
    dependencies = {
      "nvim-lua/plenary.nvim",
    },
    config = function()
      require("plugin-settings.mason").setup()
    end,
  },
  {
    "williamboman/mason-lspconfig.nvim",
    enabled = not IS_VSCODE_NEOVIM,
    dependencies = {
      "williamboman/mason.nvim",
      "williamboman/mason-lspconfig.nvim",
      "neovim/nvim-lspconfig",
      "hrsh7th/cmp-nvim-lsp",
    },
    config = function()
      require("plugin-settings.mason-lspconfig").setup()
      require("lsp").setup()
    end,
  },
  {
    "jayp0521/mason-null-ls.nvim",
    enabled = not IS_VSCODE_NEOVIM,
    dependencies = {
      "williamboman/mason.nvim",
      "jose-elias-alvarez/null-ls.nvim",
    },
    config = function()
      require("plugin-settings.mason-null-ls").setup()
    end,
  },
  -- Standalone UI for nvim-lsp progress
  {
    "j-hui/fidget.nvim",
    enabled = not IS_VSCODE_NEOVIM,
    dependencies = {
      "neovim/nvim-lspconfig",
    },
    opts = {},
  },
  -- A pretty list for showing diagnostics, references,
  -- telescope results, quickfix and location lists
  {
    "folke/trouble.nvim",
    enabled = not IS_VSCODE_NEOVIM,
    dependencies = {
      "nvim-tree/nvim-web-devicons",
    },
    config = function()
      require("plugin-settings.trouble").setup()
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
    dependencies = {
      "kkharji/sqlite.lua",
      "nvim-lua/plenary.nvim",
      "nvim-telescope/telescope-frecency.nvim",
      "nvim-tree/nvim-web-devicons",
    },
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
      "L3MON4D3/LuaSnip",
      "hrsh7th/cmp-buffer",
      "hrsh7th/cmp-cmdline",
      "hrsh7th/cmp-nvim-lsp",
      "hrsh7th/cmp-nvim-lsp-document-symbol",
      "hrsh7th/cmp-nvim-lsp-signature-help",
      "hrsh7th/cmp-nvim-lua",
      "hrsh7th/cmp-path",
      "neovim/nvim-lspconfig",
      "onsails/lspkind.nvim",
      "petertriho/cmp-git",
      "ray-x/cmp-treesitter",
      "saadparwaiz1/cmp_luasnip",
      "windwp/nvim-autopairs",
      "zbirenbaum/copilot.lua",
      "zbirenbaum/copilot-cmp",
    },
    config = function()
      require("plugin-settings.nvim-cmp").setup()
    end,
  },
  -- copilot
  {
    "zbirenbaum/copilot.lua",
    enabled = not IS_VSCODE_NEOVIM,
    dependencies = {
      "github/copilot.vim",
    },
    config = function()
      require("plugin-settings.copilot").setup()
    end,
  },
  -- This repository transforms copilot into a cmp source.
  {
    "zbirenbaum/copilot-cmp",
    enabled = not IS_VSCODE_NEOVIM,
    dependencies = {
      "zbirenbaum/copilot.lua",
    },
  },
}
