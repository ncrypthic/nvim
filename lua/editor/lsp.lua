local api = vim.api
local cmd = vim.cmd
local map = vim.keymap.set

require('mason').setup{}
require('mason-lspconfig').setup({
  ensure_installed = {
    "sumneko_lua",
    "tsserver",
    "gopls",
    "jdtls",
    "pyright",
    "intelephense",
    "lemminx"
  }
})
local lsp = require('lspconfig')

lsp.sumneko_lua.setup{}
lsp.tsserver.setup{}
lsp.gopls.setup{}
lsp.jdtls.setup{}
lsp.pyright.setup{}
lsp.intelephense.setup{}
lsp.lemminx.setup{}

require('nvim-treesitter.configs').setup({
  highlight = {
    enable = true
  }
})

----------------------------------
-- OPTIONS -----------------------
----------------------------------
-- global
vim.opt_global.completeopt = { "menuone", "noinsert", "noselect" }

-- LSP mappings
map("n", "gd", function()
  vim.lsp.buf.definition()
end)

map("n", "K", function()
  vim.lsp.buf.hover()
end)

map("n", "gi", function()
  vim.lsp.buf.implementation()
end)

map("n", "gr", function()
  vim.lsp.buf.references()
end)

map("n", "gds", function()
  vim.lsp.buf.document_symbol()
end)

map("n", "gws", function()
  vim.lsp.buf.workspace_symbol()
end)

map("n", "<leader>cl", function()
  vim.lsp.codelens.run()
end)

map("n", "<leader>sh", function()
  vim.lsp.buf.signature_help()
end)

map("n", "<leader>rn", function()
  vim.lsp.buf.rename()
end)

map("n", "<leader>f", function()
  vim.lsp.buf.formatting()
end)

map("n", "<leader>ca", function()
  vim.lsp.buf.code_action()
end)

map("n", "<leader>ws", function()
  require("metals").hover_worksheet()
end)

-- all workspace diagnostics
map("n", "<leader>aa", function()
  vim.diagnostic.setqflist()
end)

-- all workspace errors
map("n", "<leader>ae", function()
  vim.diagnostic.setqflist({ severity = "E" })
end)

-- all workspace warnings
map("n", "<leader>aw", function()
  vim.diagnostic.setqflist({ severity = "W" })
end)

-- buffer diagnostics only
map("n", "<leader>d", function()
  vim.diagnostic.setloclist()
end)

map("n", "[c", function()
  vim.diagnostic.goto_prev({ wrap = false })
end)

map("n", "]c", function()
  vim.diagnostic.goto_next({ wrap = false })
end)

map("n", "<leader>\\", function()
  vim.cmd[[CodeActionMenu]]
end)

print "Init lsp"
