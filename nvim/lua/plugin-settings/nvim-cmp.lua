local M = {}
local cmp = require("cmp")
local lspkind = require("lspkind")
local cmp_auto = require("nvim-autopairs.completion.cmp")

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

local has_words_before = function()
  if vim.api.nvim_buf_get_option(0, "buftype") == "prompt" then
    return false
  end
  local line, col = unpack(vim.api.nvim_win_get_cursor(0))
  return col ~= 0 and vim.api.nvim_buf_get_text(0, line - 1, 0, line - 1, col, {})[1]:match("^%s*$") == nil
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
      ["<Tab>"] = vim.schedule_wrap(function(fallback)
        if cmp.visible() and has_words_before() then
          cmp.select_next_item({ behavior = cmp.SelectBehavior.Select })
        else
          fallback()
        end
      end),
    }),
    sources = cmp.config.sources({
      { name = "luasnip" },
      { name = "nvim_lsp" },
      { name = "nvim_lsp_signature_help" },
      { name = "nvim_lua" },
      { name = "path" },
      { name = "treesitter" },
      {
        { name = "buffer" },
      },
    }),
    formatting = {
      format = lspkind.cmp_format({
        mode = "symbol",
        maxwidth = 50,
        ellipsis_char = "...",
      }),
    },
  })

  cmp.setup.filetype("gitcommit", {
    sources = cmp.config.sources({
      { name = "cmp_git" },
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
      { name = "nvim_lsp_document_symbol" },
      {
        { name = "buffer" },
      },
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

  cmp.event:on("confirm_done", cmp_auto.on_confirm_done())
end

return M
