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
    -- "harper_ls",
    --"kotlin_language_server",
    -- "solargraph",
    "kotlin_lsp",
    -- "ktlint",
    "intelephense",
    "lemminx"
  }
})

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
  callback = function(ev)
    local clients = vim.lsp.get_clients({ bufnr = ev.buf })
    if #clients == 0 then
      return
    end
    for _,client in ipairs(clients) do
      if client.server_capabilities.documentHighlightProvider then
        vim.lsp.buf.document_highlight()
        return
      end
    end
  end,
})

vim.api.nvim_create_autocmd("CursorHoldI", {
  callback = function(ev)
    local clients = vim.lsp.get_clients({ bufnr = ev.buf })
    if #clients == 0 then
      return
    end
    for _,client in ipairs(clients) do
      if client.server_capabilities.documentHighlightProvider then
        vim.lsp.buf.document_highlight()
        return
      end
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
  vim.diagnostic.setqflist({ severity = "W" })
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
