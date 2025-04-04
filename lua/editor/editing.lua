local formatter = require('formatter')
local formatter_util = require('formatter.util')

require("formatter").setup {
  -- Enable or disable logging
  logging = true,
  -- Set the log level
  log_level = vim.log.levels.WARN,
  -- All formatter configurations are opt-in
  filetype = {
    typescript = { require('formatter.filetypes.typescript').prettier },
    typescriptreact = { require('formatter.filetypes.typescriptreact').prettier },
    javascript = { require('formatter.filetypes.typescript').prettier },
    javascriptreact = { require('formatter.filetypes.javascriptreact').prettier },
    php={require('formatter.filetypes.php').php_cs_fixer},
    go = { require('formatter.filetypes.go').gofmt },
    kotlin = { require('formatter.filetypes.kotlin').ktlint },
    dart = { require('formatter.filetypes.dart').dartformat },
    ["*"] = {
      -- "formatter.filetypes.any" defines default configurations for any
      -- filetype
      require("formatter.filetypes.any").remove_trailing_whitespace
    }
  }
}

vim.api.nvim_create_autocmd("BufWritePost", {
  callback = function() vim.cmd [[FormatWrite]] end,
  group = vim.api.nvim_create_augroup("lsp_document_format", { clear = true })
})

require('nvim_comment').setup{}
