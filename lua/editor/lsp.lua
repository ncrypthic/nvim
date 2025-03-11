local map = vim.keymap.set
local builtin = require('telescope.builtin')

require('mason').setup{}
require('mason-lspconfig').setup({
  ensure_installed = {
    "lua_ls",
    "ts_ls",
    -- "psalm",
    "terraformls",
    -- "gopls",
    "jdtls",
    "pyright",
    "eslint",
    "kotlin_language_server",
    -- "solargraph",
    "intelephense",
    "lemminx"
  }
})
local lsp = require('lspconfig')
local capabilities = require("cmp_nvim_lsp").default_capabilities()

lsp.lua_ls.setup{
  capabilities = capabilities
}
-- lsp.psalm.setup{}
lsp.ts_ls.setup{
  capabilities = capabilities
}
lsp.eslint.setup{
  capabilities = capabilities
}
-- lsp.gopls.setup{}
lsp.jdtls.setup{
  capabilities = capabilities
}
lsp.pyright.setup{
  capabilities = capabilities
}
-- lsp.solargraph.setup{}
lsp.intelephense.setup{
  capabilities = capabilities
}
lsp.lemminx.setup{
  capabilities = capabilities
}
lsp.kotlin_language_server.setup{
  capabilities = capabilities,
  settings = {
    kotlin = {
      compiler = {
        jvm = {
          target = "17"
        }
      }
    }
  }
}
lsp.tailwindcss.setup{
  capabilities = capabilities,
}
lsp.terraformls.setup{
  capabilities = capabilities,
}

require'nvim-treesitter.configs'.setup {
  highlight = {
    enable = true,
  },
  refactor = {
    highlight_definitions = {
      enable = true,
    },
  },
}

vim.g.vista_default_executive = 'nvim_lsp'

vim.api.nvim_create_autocmd("CursorHold", {
  callback = function()
    local clients = vim.lsp.get_active_clients()
    if client == nil then
      return
    end
    if clients[1].server_capabilities.documentHighlightProvider then
      vim.lsp.buf.document_highlight()
    end
  end,
})

vim.api.nvim_create_autocmd("CursorHoldI", {
  callback = function()
    local clients = vim.lsp.get_active_clients()
    if client == nil then
      return
    end
    if clients[1].server_capabilities.documentHighlightProvider then
      vim.lsp.buf.document_highlight()
    end
  end,
})

vim.api.nvim_create_autocmd("CursorMoved", {
  callback = function()
    vim.lsp.buf.clear_references()
  end,
})
----------------------------------
-- OPTIONS -----------------------
----------------------------------
-- global

-- LSP mappings
map("n", "gd", builtin.lsp_definitions)

map("n", "K", function()
  vim.lsp.buf.hover()
end)

map("n", "gi", builtin.lsp_implementations)

map("n", "gr", builtin.lsp_references)

map("n", "gds", builtin.lsp_document_symbols)

map("n", "gws", function()
  builtin.lsp_workspace_symbols()
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
  vim.lsp.buf.code_action()
end)

map("n", "<leader>b", function()
  vim.cmd [[ Vista!! ]]
end)

print "Init lsp"
