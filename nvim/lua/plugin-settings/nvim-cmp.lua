local M = {}
local cmp = require("cmp")

local cmp_select = {}

function cmp_select._base(func)
  if cmp.visible() then
    func()
  else
    cmp.complete()
  end
end

function cmp_select.next()
  cmp_select._base(cmp.select_next_item)
end

function cmp_select.prev()
  cmp_select._base(cmp.select_prev_item)
end

function M.setup()
  cmp.setup({
    snippet = {
      expand = function(args)
        require("luasnip").lsp_expand(args.body)
      end,
    },
    window = {
      -- completion = cmp.config.window.bordered(),
      -- documentation = cmp.config.window.bordered(),
    },
    mapping = cmp.mapping.preset.insert({
      ["<C-e>"] = cmp_select.next,
      ["<C-u>"] = cmp_select.prev,
      ["<C-l>"] = cmp.mapping.scroll_docs(-4),
      ["<C-n>"] = cmp.mapping.scroll_docs(4),
      ["<C-Space>"] = cmp.mapping.complete(),
      ["<C-q>"] = cmp.mapping.abort(),
      ["<CR>"] = cmp.mapping.confirm({
        select = true,
      }),
    }),
    sources = cmp.config.sources({
      { name = "nvim_lsp" },
      { name = "copilot" },
      { name = "luasnip" },
      {
        { name = "buffer" },
      },
    }),
  })

  cmp.setup.filetype("gitcommit", {
    sources = cmp.config.sources({
      { name = "cmp_git" }, -- You can specify the `cmp_git` source if you were installed it.
    }, {
      { name = "buffer" },
    }),
  })
  cmp.setup.cmdline({ "/", "?" }, {
    mapping = cmp.mapping.preset.cmdline({
      ["<C-e>"] = { c = cmp_select.next },
      ["<C-u>"] = { c = cmp_select.prev },
    }),
    sources = {
      { name = "buffer" },
    },
  })
  cmp.setup.cmdline(":", {
    mapping = cmp.mapping.preset.cmdline({
      ["<C-e>"] = { c = cmp_select.next },
      ["<C-u>"] = { c = cmp_select.prev },
    }),
    sources = cmp.config.sources({
      { name = "path" },
    }, {
      { name = "cmdline" },
    }),
  })

  -- local capabilities = require("cmp_nvim_lsp").default_capabilities()
  -- require("lspconfig")["<YOUR_LSP_SERVER>"].setup({
  --   capabilities = capabilities,
  -- })
end

return M
