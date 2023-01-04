local api = vim.api
local cmd = vim.cmd
local map = vim.keymap.set
local types = require('cmp.types')
local cmp = require("cmp")

-- completion related settings
-- This is similiar to what I use

vim.opt_global.completeopt = {"menu", "menuone", "noselect"}

cmp.setup({
  sources = {
    { name = "nvim_lsp" },
    { name = "vsnip" },
    { name = "buffer" },
    { name = 'nvim_lsp_signature_help' }
  },
  snippet = {
    expand = function(args)
      -- Comes from vsnip
      vim.fn["vsnip#anonymous"](args.body)
    end,
  },
  mapping = cmp.mapping.preset.insert({
    ['<C-n>'] = {
      i = cmp.mapping.select_next_item({ behavior = types.cmp.SelectBehavior.Insert }),
    },
    ['<C-p>'] = {
      i = cmp.mapping.select_prev_item({ behavior = types.cmp.SelectBehavior.Insert }),
    },
    ['<C-y>'] = {
      i = cmp.mapping.confirm({ select = false }),
    },
  })
})
