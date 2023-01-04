vim.cmd [[packadd packer.nvim]]

return require('packer').startup(function(use)
  -- Packer can manage itself
  use { 'wbthomason/packer.nvim', opt = true }

  -- Tree explorer

  use 'nvim-tree/nvim-web-devicons'
  use {
    'nvim-tree/nvim-tree.lua',
    requires = {
      'nvim-tree/nvim-web-devicons', -- optional, for file icons
    },
  }

  -- Colors

  use 'tjdevries/colorbuddy.vim'
  use 'ellisonleao/gruvbox.nvim'

  use 'rstacruz/vim-closer'

  use { 'nvim-lualine/lualine.nvim', options = { theme = 'tokyonight' }}

  -- Navigation

  use { 'junegunn/fzf', run = './install --bin', }

  use 'ibhagwan/fzf-lua'

  use {'tpope/vim-dispatch', opt = true, cmd = {'Dispatch', 'Make', 'Focus', 'Start'}}

  use {'andymass/vim-matchup', event = 'VimEnter'}

  -- Syntax Highlighting

  use { 'nvim-treesitter/nvim-treesitter', run = ':TSUpdate' }

  -- Layout

  use {
    'NTBBloodbath/galaxyline.nvim',
    config = function()
        require('galaxyline.themes.eviline')
    end,
    requires = {'nvim-tree/nvim-web-devicons', 'nvim-lualine/lualine.nvim'}
  }

  -- UI

  use {
    'lewis6991/gitsigns.nvim', requires = { 'nvim-lua/plenary.nvim' },
    config = function() require('gitsigns').setup() end
  }
  use {'liuchengxu/vista.vim'}

  -- Git
  use 'tpope/vim-fugitive'

  -- Autocomplete

  use({
    "hrsh7th/nvim-cmp",
    requires = {
      { "hrsh7th/cmp-nvim-lsp" },
      { "hrsh7th/cmp-vsnip" },
      { "hrsh7th/vim-vsnip" },
    },
  })

  -- Comment
  use { 'terrortylor/nvim-comment' }

  -- LSP plugins

  use { 'williamboman/mason.nvim' }
  use { 'williamboman/mason-lspconfig.nvim', ensure_installed = {"tsserver", "sumneko_lua", "gopls"}, automatic_installation = true }
  use { 'neovim/nvim-lspconfig' }
  use { 'weilbith/nvim-code-action-menu', cmd = 'CodeActionMenu' }
  use { 'hrsh7th/cmp-nvim-lsp-signature-help' }

  -- LSP language servers

  use { 'scalameta/nvim-metals', requires = { "nvim-lua/plenary.nvim" } }

  -- DAP configuration

  use 'mfussenegger/nvim-dap'
  use 'Pocco81/dap-buddy.nvim'
  use { 'rcarriga/nvim-dap-ui', requires = {'mfussenegger/nvim-dap'} }

  -- DAP Adapter

  use 'leoluz/nvim-dap-go'
  use { 'sebdah/vim-delve', ft = {'go'}}
  use {
    "microsoft/vscode-js-debug",
    opt = true,
    run = "npm install --legacy-peer-deps && npm run compile",
  }
  use { "mxsdev/nvim-dap-vscode-js", requires = {"mfussenegger/nvim-dap", "microsoft/vscode-js-debug"} }

  -- Formatter
  use { 'mhartington/formatter.nvim' }
end)
