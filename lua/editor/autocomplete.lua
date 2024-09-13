local types = require('cmp.types')
local cmp = require("cmp")

-- completion related settings
-- This is similiar to what I use

-- vim.opt_global.completeopt = {"menu", "menuone", "noselect"}
-- vim.o.completeopt = "menu,menuone,preview,noselect"

cmp.setup({
  sources = cmp.config.sources({
    { name = 'nvim_lsp_signature_help' },
    { name = "nvim_lsp" },
    { name = "vsnip" },
    { name = "buffer" },
  }, {
    { name = "buffer" }
  }),
  snippet = {
    expand = function(args)
      -- Comes from vsnip
      vim.snippet.expand(args.body)
    end,
  },
  mapping = cmp.mapping.preset.insert({
    ['<C-n>'] = cmp.mapping.select_next_item({ behavior = types.cmp.SelectBehavior.Insert }),
    ['<C-p>'] = cmp.mapping.select_prev_item({ behavior = types.cmp.SelectBehavior.Insert }),
    ['<C-y>'] = cmp.mapping.confirm({ select = false }),
    ['<C-Space>'] = cmp.mapping.complete(),
  })
})
