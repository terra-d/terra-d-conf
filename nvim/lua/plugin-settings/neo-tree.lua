local M = {}
local noremap = require("utils").noremap

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

    noremap("n", "<leader>E", "<cmd>NeoTreeShow<CR>")
end

return M
