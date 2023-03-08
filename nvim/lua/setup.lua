-- load vim settings
IS_VSCODE_NEOVIM = vim.g.vscode
require("settings")

-- set up the package manager
local lazypath = vim.fn.stdpath("data") .. "/lazy/lazy.nvim"
if not vim.loop.fs_stat(lazypath) then
    vim.fn.system({
        "git",
        "clone",
        "--filter=blob:none",
        "https://github.com/folke/lazy.nvim.git",
        "--branch=stable",
        lazypath,
    })
end
vim.opt.rtp:prepend(lazypath)

local plugins = require("plugins")
require("lazy").setup(plugins, {
    root             = vim.fn.stdpath("data") .. "/lazy",
    lockfile         = CONFIGRATION_PATH .. "/lazy-lock.json",
    install          = {
        missing = true,
    },
    checker          = {
        enabled = true,
        notify = true,
    },
    change_detection = {
        enabled = true,
        notify = true,
    },
    diff             = {
        cmd = "git",
    },
    performance      = {
        cache = {
            enabled = true,
            path = vim.fn.stdpath("cache") .. "/lazy/cache",
        },
        rtp = {
            disabled_plugins = {
                -- "gzip",
                -- "matchit",
                -- "matchparen",
                "netrwPlugin",
                -- "tarPlugin",
                -- "tohtml",
                -- "tutor",
                -- "zipPlugin",
            },
        },
    },
})
