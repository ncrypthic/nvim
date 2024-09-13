return {
  -- colors
  {
    "folke/tokyonight.nvim",
    lazy = false,
    priority = 1000,
  },
  -- stdlib
  { 'nvim-lua/plenary.nvim' },
  { 'stevearc/dressing.nvim' },
  {
    "vhyrro/luarocks.nvim",
    priority=1000,
    config=true
  },
  { "nvim-neotest/nvim-nio" },
  { 'j-hui/fidget.nvim', config = function() require("fidget").setup({}) end },

  -- Tree explorer

  'nvim-tree/nvim-web-devicons',
  {
    "nvim-tree/nvim-tree.lua",
    version = "*",
    lazy = false,
    dependencies = {
      "nvim-tree/nvim-web-devicons",
    },
    config = function()
      require("nvim-tree").setup {}
    end,
  },

  -- Colors

  'tjdevries/colorbuddy.vim',
  'ellisonleao/gruvbox.nvim',

  -- Navigation
  'rstacruz/vim-closer',

  { 'junegunn/fzf', run = './install --bin' },

  {
    'ibhagwan/fzf-lua',
    dependencies = { "nvim-tree/nvim-web-devicons" },
    config = function()
      require('fzf-lua').setup({fzf_colors = true})
    end
  },

  {'tpope/vim-dispatch', opt = true, cmd = {'Dispatch', 'Make', 'Focus', 'Start'}},

  {'andymass/vim-matchup', event = 'VimEnter'},

  -- Syntax Highlighting

  { 'nvim-treesitter/nvim-treesitter', run = ':TSUpdate', options = {
    ensure_installed = { "vim", "lua", "http", "json" }
  }},
  { 'nvim-treesitter/nvim-treesitter-refactor', requires = {'nvim-treesitter/nvim-treesitter'} },

  -- Layout

  {
    'NTBBloodbath/galaxyline.nvim',
    config = function()
        require('galaxyline.themes.eviline')
        local gls = require('galaxyline').section
        gls.left[5] = {
          FileName = {
            provider = "FilePath"
          }
        }
    end,
    requires = {'nvim-tree/nvim-web-devicons', 'nvim-lualine/lualine.nvim'}
  },

  -- UI

  {
    'lewis6991/gitsigns.nvim', requires = { 'nvim-lua/plenary.nvim' },
    config = function() require('gitsigns').setup() end
  },
  {'liuchengxu/vista.vim'},

  -- Git
  'tpope/vim-fugitive',

  -- Comment
  { 'terrortylor/nvim-comment' },

  -- LSP plugins

  { 'williamboman/mason.nvim' },
  { 'williamboman/mason-lspconfig.nvim', automatic_installation = true },
  { 'neovim/nvim-lspconfig' },
  { 'weilbith/nvim-code-action-menu', cmd = 'CodeActionMenu' },
  { "hrsh7th/cmp-vsnip" },
  { "hrsh7th/cmp-buffer" },
  { 'hrsh7th/cmp-nvim-lsp' },
  { 'hrsh7th/cmp-nvim-lsp-signature-help' },

  -- LSP language servers

  { 'scalameta/nvim-metals', requires = { "nvim-lua/plenary.nvim" } },
  {
    'akinsho/flutter-tools.nvim',
    requires = {
        'nvim-lua/plenary.nvim',
        'stevearc/dressing.nvim', -- optional for vim.ui.select
    },
    config = {
      flutter_path = "/Users/nbmhqa129/Downloads/flutter/bin/flutter"
    }
  },

  -- DAP Adapter

  'leoluz/nvim-dap-go',
  { 'sebdah/vim-delve', ft = {'go'}},
  {
    "microsoft/vscode-js-debug",
    opt = true,
    run = "npm install --legacy-peer-deps && npm run compile",
  },
  { "mxsdev/nvim-dap-vscode-js", requires = {"mfussenegger/nvim-dap", "microsoft/vscode-js-debug"} },

  -- DAP configuration

  'mfussenegger/nvim-dap',
  'Pocco81/dap-buddy.nvim',
  { 'rcarriga/nvim-dap-ui', requires = {'mfussenegger/nvim-dap'} },
  { "Mgenuit/nvim-dap-kotlin", config = true },

  -- Autocomplete

  {
    "hrsh7th/nvim-cmp",
    requires = {
      { "hrsh7th/cmp-nvim-lsp" },
      { "hrsh7th/cmp-vsnip" },
      { "hrsh7th/vim-vsnip" },
    },
  },

  -- REST Client
  {
    "rest-nvim/rest.nvim",
    requires = { "nvim-lua/plenary.nvim" },
  },

  -- Formatter
  { 'mhartington/formatter.nvim' },

  -- Language specific plugins -------------------------------
  -- use { 'fatih/vim-go' }

  -- Productivity --------------------------------------------
  {
    'nvim-orgmode/orgmode',
    event = 'VeryLazy',
    ft = { 'org' },
    config = function()
      -- Setup orgmode
      require('orgmode').setup({
        org_agenda_files = '~/Org/**/*',
        org_default_notes_file = '~/Org/main.org',
      })

      -- NOTE: If you are using nvim-treesitter with ~ensure_installed = "all"~ option
      -- add ~org~ to ignore_install
      -- require('nvim-treesitter.configs').setup({
      --   ensure_installed = 'all',
      --   ignore_install = { 'org' },
      -- })
    end,
  }
}
