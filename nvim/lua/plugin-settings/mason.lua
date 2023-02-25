local M = {}

local lsp_servers = {
    lua_ls = {
        settings = {
            Lua = {
                runtime = {
                    -- Tell the language server which version of Lua
                    -- you're using (most likely LuaJIT in the case of Neovim)
                    version = "LuaJIT",
                },
                diagnostics = {
                    -- Get the language server to recognize the `vim` global
                    globals = { "vim" },
                },
                workspace = {
                    -- Make the server aware of Neovim runtime files
                    library = vim.api.nvim_get_runtime_file("", true),
                },
                -- Do not send telemetry data containing a randomized but unique identifier
                telemetry = {
                    enable = false,
                },
            },
        },
    },
    pyright = {},
}

function M.setup()
    require("mason").setup()
    require("mason-lspconfig").setup({
        ensure_installed = vim.tbl_keys(lsp_servers),
    })
    for _, server in ipairs(vim.tbl_keys(lsp_servers)) do
        require("lspconfig")[server].setup(lsp_servers[server])
    end

    local mason_null_ls = require("mason-null-ls")
    mason_null_ls.setup({
        ensure_installed = {
            "stylua",
        },
        automatic_installation = false,
        automatic_setup = true, -- Recommended, but optional
    })
    mason_null_ls.setup_handlers({})
    require("null-ls").setup({
        sources = {
            -- Anything not supported by mason.
        },
    })
end

return M
