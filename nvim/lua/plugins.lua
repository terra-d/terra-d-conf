return {
  -- A highly customizable theme for vim and neovim
  {
    "folke/tokyonight.nvim",
    enabled = not IS_VSCODE_NEOVIM,
    lazy = false,
    config = function()
      vim.cmd("colorscheme tokyonight-night")
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
    dependencies = {
      "nvim-treesitter/nvim-treesitter",
    },
    opts = {},
  },
  -- Showing indent lines
  {
    "lukas-reineke/indent-blankline.nvim",
    enabled = not IS_VSCODE_NEOVIM,
    main = "ibl",
    dependencies = {
      "nvim-treesitter/nvim-treesitter",
    },
    config = function()
      require("plugin-settings.indent-blankline").setup()
    end,
  },
  -- NOTE: This plugin is not working for me because of conflict with keybindings.
  -- --  Repeat.vim remaps . in a way that plugins can tap into it.
  -- {
  --   "tpope/vim-repeat",
  --   config = function()
  --     require("plugin-settings.vim-repeat").setup()
  --   end,
  -- },
  -- Leap is a general-purpose motion plugin
  {
    "ggandor/leap.nvim",
    -- dependencies = {
    --   "tpope/vim-repeat",
    -- },
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
  -- Install or upgrade all of your third-party tools.
  {
    "WhoIsSethDaniel/mason-tool-installer.nvim",
    enabled = not IS_VSCODE_NEOVIM,
    dependencies = {
      "williamboman/mason.nvim",
    },
    config = function()
      require("plugin-settings.mason-tool-installer").setup()
    end,
  },
  {
    "williamboman/mason-lspconfig.nvim",
    enabled = not IS_VSCODE_NEOVIM,
    dependencies = {
      "williamboman/mason.nvim",
      "neovim/nvim-lspconfig",
      "hrsh7th/cmp-nvim-lsp",
    },
    config = function()
      require("plugin-settings.mason-lspconfig").setup()
      require("lsp.lsp-config").setup()
    end,
  },
  {
    "jayp0521/mason-null-ls.nvim",
    enabled = not IS_VSCODE_NEOVIM,
    dependencies = {
      "williamboman/mason.nvim",
      "nvimtools/none-ls.nvim",
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
    tag = "0.1.5",
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
    dependencies = { "nvim-lua/plenary.nvim", "sindrets/diffview.nvim" },
    config = function()
      require("plugin-settings.neogit").setup()
    end,
  },
  {
    "sindrets/diffview.nvim",
    enabled = not IS_VSCODE_NEOVIM,
    dependencies = { "nvim-lua/plenary.nvim" },
    config = function()
      require("plugin-settings.diffview").setup()
    end,
  },
  -- Super fast git decorations implemented purely in lua/teal.
  {
    "lewis6991/gitsigns.nvim",
    enabled = not IS_VSCODE_NEOVIM,
    config = function()
      require("plugin-settings.gitsigns").setup()
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
    },
    config = function()
      require("plugin-settings.nvim-cmp").setup()
    end,
  },
  -- terminal
  {
    "akinsho/toggleterm.nvim",
    enabled = not IS_VSCODE_NEOVIM,
    version = "*",
    config = function()
      require("plugin-settings.toggleterm").setup()
    end,
  },
  -- copilot
  {
    "github/copilot.vim",
    enabled = not IS_VSCODE_NEOVIM,
    config = function()
      require("plugin-settings.copilot").setup()
    end,
  },
  -- {
  --   "zbirenbaum/copilot.lua",
  --   enabled = not IS_VSCODE_NEOVIM,
  --   dependencies = {
  --     "github/copilot.vim",
  --   },
  --   config = function()
  --     require("plugin-settings.copilot").setup()
  --   end,
  -- },
  -- plantuml syntax highlight
  {
    "aklt/plantuml-syntax",
    enabled = not IS_VSCODE_NEOVIM,
  },
  -- plantuml previewer
  {
    "skanehira/preview-uml.vim",
    enabled = not IS_VSCODE_NEOVIM,
    config = function()
      require("plugin-settings.preview-uml").setup()
    end,
  },
  -- orgmode
  {
    "nvim-neorg/neorg",
    lazy = false,
    version = "*",
    config = true,
  },
}
