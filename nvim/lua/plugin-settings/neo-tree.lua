local M = {}
local map = require("utils").map

function M.setup()
    require("neo-tree").setup({
        window = {
            mappings = {
                ["e"] = "none",
                ["s"] = "open_split",
                ["v"] = "open_vsplit",
            },
        },
        filesystem = {
            filtered_items = {
                hide_dotfiles = false,
            },
        },
    })

    map("n", "<leader>E", "<cmd>NeoTreeShow<CR>")
end

return M
