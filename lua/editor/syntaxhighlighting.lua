require('nvim-treesitter.configs').setup({
  ensure_installed = {
    'kotlin',
    'typescript',
    'javascript',
    'go',
    'lua',
    'json',
    'java',
    'html',
    'css',
    'terraform',
    'dockerfile',
    'todotxt',
    'markdown',
  },
  ignore_install = { 'org' },
  highlight = {
    enable = true,
  },
  refactor = {
    highlight_definitions = {
      enable = true,
    },
  },
})
