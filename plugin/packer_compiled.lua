-- Automatically generated packer.nvim plugin loader code

if vim.api.nvim_call_function('has', {'nvim-0.5'}) ~= 1 then
  vim.api.nvim_command('echohl WarningMsg | echom "Invalid Neovim version for packer.nvim! | echohl None"')
  return
end

vim.api.nvim_command('packadd packer.nvim')

local no_errors, error_msg = pcall(function()

_G._packer = _G._packer or {}
_G._packer.inside_compile = true

local time
local profile_info
local should_profile = false
if should_profile then
  local hrtime = vim.loop.hrtime
  profile_info = {}
  time = function(chunk, start)
    if start then
      profile_info[chunk] = hrtime()
    else
      profile_info[chunk] = (hrtime() - profile_info[chunk]) / 1e6
    end
  end
else
  time = function(chunk, start) end
end

local function save_profiles(threshold)
  local sorted_times = {}
  for chunk_name, time_taken in pairs(profile_info) do
    sorted_times[#sorted_times + 1] = {chunk_name, time_taken}
  end
  table.sort(sorted_times, function(a, b) return a[2] > b[2] end)
  local results = {}
  for i, elem in ipairs(sorted_times) do
    if not threshold or threshold and elem[2] > threshold then
      results[i] = elem[1] .. ' took ' .. elem[2] .. 'ms'
    end
  end
  if threshold then
    table.insert(results, '(Only showing plugins that took longer than ' .. threshold .. ' ms ' .. 'to load)')
  end

  _G._packer.profile_output = results
end

time([[Luarocks path setup]], true)
local package_path_str = "/Users/ncrypthic/.cache/nvim/packer_hererocks/2.1.0-beta3/share/lua/5.1/?.lua;/Users/ncrypthic/.cache/nvim/packer_hererocks/2.1.0-beta3/share/lua/5.1/?/init.lua;/Users/ncrypthic/.cache/nvim/packer_hererocks/2.1.0-beta3/lib/luarocks/rocks-5.1/?.lua;/Users/ncrypthic/.cache/nvim/packer_hererocks/2.1.0-beta3/lib/luarocks/rocks-5.1/?/init.lua"
local install_cpath_pattern = "/Users/ncrypthic/.cache/nvim/packer_hererocks/2.1.0-beta3/lib/lua/5.1/?.so"
if not string.find(package.path, package_path_str, 1, true) then
  package.path = package.path .. ';' .. package_path_str
end

if not string.find(package.cpath, install_cpath_pattern, 1, true) then
  package.cpath = package.cpath .. ';' .. install_cpath_pattern
end

time([[Luarocks path setup]], false)
time([[try_loadstring definition]], true)
local function try_loadstring(s, component, name)
  local success, result = pcall(loadstring(s), name, _G.packer_plugins[name])
  if not success then
    vim.schedule(function()
      vim.api.nvim_notify('packer.nvim: Error running ' .. component .. ' for ' .. name .. ': ' .. result, vim.log.levels.ERROR, {})
    end)
  end
  return result
end

time([[try_loadstring definition]], false)
time([[Defining packer_plugins]], true)
_G.packer_plugins = {
  ["cmp-nvim-lsp"] = {
    loaded = true,
    path = "/Users/ncrypthic/.local/share/nvim/site/pack/packer/start/cmp-nvim-lsp",
    url = "https://github.com/hrsh7th/cmp-nvim-lsp"
  },
  ["cmp-nvim-lsp-signature-help"] = {
    loaded = true,
    path = "/Users/ncrypthic/.local/share/nvim/site/pack/packer/start/cmp-nvim-lsp-signature-help",
    url = "https://github.com/hrsh7th/cmp-nvim-lsp-signature-help"
  },
  ["cmp-vsnip"] = {
    loaded = true,
    path = "/Users/ncrypthic/.local/share/nvim/site/pack/packer/start/cmp-vsnip",
    url = "https://github.com/hrsh7th/cmp-vsnip"
  },
  ["colorbuddy.vim"] = {
    loaded = true,
    path = "/Users/ncrypthic/.local/share/nvim/site/pack/packer/start/colorbuddy.vim",
    url = "https://github.com/tjdevries/colorbuddy.vim"
  },
  ["dap-buddy.nvim"] = {
    loaded = true,
    path = "/Users/ncrypthic/.local/share/nvim/site/pack/packer/start/dap-buddy.nvim",
    url = "https://github.com/Pocco81/dap-buddy.nvim"
  },
  ["formatter.nvim"] = {
    loaded = true,
    path = "/Users/ncrypthic/.local/share/nvim/site/pack/packer/start/formatter.nvim",
    url = "https://github.com/mhartington/formatter.nvim"
  },
  fzf = {
    loaded = true,
    path = "/Users/ncrypthic/.local/share/nvim/site/pack/packer/start/fzf",
    url = "https://github.com/junegunn/fzf"
  },
  ["fzf-lua"] = {
    loaded = true,
    path = "/Users/ncrypthic/.local/share/nvim/site/pack/packer/start/fzf-lua",
    url = "https://github.com/ibhagwan/fzf-lua"
  },
  ["galaxyline.nvim"] = {
    config = { "\27LJ\2\n9\0\0\3\0\2\0\0046\0\0\0'\2\1\0B\0\2\1K\0\1\0\30galaxyline.themes.eviline\frequire\0" },
    loaded = true,
    path = "/Users/ncrypthic/.local/share/nvim/site/pack/packer/start/galaxyline.nvim",
    url = "https://github.com/NTBBloodbath/galaxyline.nvim"
  },
  ["gitsigns.nvim"] = {
    config = { "\27LJ\2\n6\0\0\3\0\3\0\0066\0\0\0'\2\1\0B\0\2\0029\0\2\0B\0\1\1K\0\1\0\nsetup\rgitsigns\frequire\0" },
    loaded = true,
    path = "/Users/ncrypthic/.local/share/nvim/site/pack/packer/start/gitsigns.nvim",
    url = "https://github.com/lewis6991/gitsigns.nvim"
  },
  ["gruvbox.nvim"] = {
    loaded = true,
    path = "/Users/ncrypthic/.local/share/nvim/site/pack/packer/start/gruvbox.nvim",
    url = "https://github.com/ellisonleao/gruvbox.nvim"
  },
  ["lualine.nvim"] = {
    loaded = true,
    path = "/Users/ncrypthic/.local/share/nvim/site/pack/packer/start/lualine.nvim",
    url = "https://github.com/nvim-lualine/lualine.nvim"
  },
  ["mason-lspconfig.nvim"] = {
    loaded = true,
    path = "/Users/ncrypthic/.local/share/nvim/site/pack/packer/start/mason-lspconfig.nvim",
    url = "https://github.com/williamboman/mason-lspconfig.nvim"
  },
  ["mason.nvim"] = {
    loaded = true,
    path = "/Users/ncrypthic/.local/share/nvim/site/pack/packer/start/mason.nvim",
    url = "https://github.com/williamboman/mason.nvim"
  },
  ["nvim-cmp"] = {
    loaded = true,
    path = "/Users/ncrypthic/.local/share/nvim/site/pack/packer/start/nvim-cmp",
    url = "https://github.com/hrsh7th/nvim-cmp"
  },
  ["nvim-code-action-menu"] = {
    commands = { "CodeActionMenu" },
    loaded = false,
    needs_bufread = true,
    only_cond = false,
    path = "/Users/ncrypthic/.local/share/nvim/site/pack/packer/opt/nvim-code-action-menu",
    url = "https://github.com/weilbith/nvim-code-action-menu"
  },
  ["nvim-comment"] = {
    loaded = true,
    path = "/Users/ncrypthic/.local/share/nvim/site/pack/packer/start/nvim-comment",
    url = "https://github.com/terrortylor/nvim-comment"
  },
  ["nvim-dap"] = {
    loaded = true,
    path = "/Users/ncrypthic/.local/share/nvim/site/pack/packer/start/nvim-dap",
    url = "https://github.com/mfussenegger/nvim-dap"
  },
  ["nvim-dap-go"] = {
    loaded = true,
    path = "/Users/ncrypthic/.local/share/nvim/site/pack/packer/start/nvim-dap-go",
    url = "https://github.com/leoluz/nvim-dap-go"
  },
  ["nvim-dap-ui"] = {
    loaded = true,
    path = "/Users/ncrypthic/.local/share/nvim/site/pack/packer/start/nvim-dap-ui",
    url = "https://github.com/rcarriga/nvim-dap-ui"
  },
  ["nvim-dap-vscode-js"] = {
    loaded = true,
    path = "/Users/ncrypthic/.local/share/nvim/site/pack/packer/start/nvim-dap-vscode-js",
    url = "https://github.com/mxsdev/nvim-dap-vscode-js"
  },
  ["nvim-lspconfig"] = {
    loaded = true,
    path = "/Users/ncrypthic/.local/share/nvim/site/pack/packer/start/nvim-lspconfig",
    url = "https://github.com/neovim/nvim-lspconfig"
  },
  ["nvim-metals"] = {
    loaded = true,
    path = "/Users/ncrypthic/.local/share/nvim/site/pack/packer/start/nvim-metals",
    url = "https://github.com/scalameta/nvim-metals"
  },
  ["nvim-tree.lua"] = {
    loaded = true,
    path = "/Users/ncrypthic/.local/share/nvim/site/pack/packer/start/nvim-tree.lua",
    url = "https://github.com/nvim-tree/nvim-tree.lua"
  },
  ["nvim-treesitter"] = {
    loaded = true,
    path = "/Users/ncrypthic/.local/share/nvim/site/pack/packer/start/nvim-treesitter",
    url = "https://github.com/nvim-treesitter/nvim-treesitter"
  },
  ["nvim-treesitter-refactor"] = {
    loaded = true,
    path = "/Users/ncrypthic/.local/share/nvim/site/pack/packer/start/nvim-treesitter-refactor",
    url = "https://github.com/nvim-treesitter/nvim-treesitter-refactor"
  },
  ["nvim-web-devicons"] = {
    loaded = true,
    path = "/Users/ncrypthic/.local/share/nvim/site/pack/packer/start/nvim-web-devicons",
    url = "https://github.com/nvim-tree/nvim-web-devicons"
  },
  ["packer.nvim"] = {
    loaded = false,
    needs_bufread = false,
    path = "/Users/ncrypthic/.local/share/nvim/site/pack/packer/opt/packer.nvim",
    url = "https://github.com/wbthomason/packer.nvim"
  },
  ["plenary.nvim"] = {
    loaded = true,
    path = "/Users/ncrypthic/.local/share/nvim/site/pack/packer/start/plenary.nvim",
    url = "https://github.com/nvim-lua/plenary.nvim"
  },
  ["rest.nvim"] = {
    config = { "\27LJ\2\n>\0\1\5\0\4\0\0066\1\0\0009\1\1\0019\1\2\0015\3\3\0\18\4\0\0D\1\3\0\1\5\0\0\ttidy\a-i\a-q\6-\vsystem\afn\bvimî\2\1\0\6\0\r\0\0176\0\0\0'\2\1\0B\0\2\0029\0\2\0005\2\3\0005\3\4\0=\3\5\0025\3\6\0005\4\a\0003\5\b\0=\5\t\4=\4\n\3=\3\v\0024\3\0\0=\3\f\2B\0\2\1K\0\1\0\29custom_dynamic_variables\vresult\15formatters\thtml\0\1\0\1\tjson\ajq\1\0\3\19show_http_info\2\rshow_url\2\17show_headers\2\14highlight\1\0\2\fenabled\2\ftimeout\3–\1\1\0\a\26result_split_in_place\2\26skip_ssl_verification\1\17yank_dry_run\2\15encode_url\2\renv_file\t.env\20jump_to_request\2\28result_split_horizontal\1\nsetup\14rest-nvim\frequire\0" },
    loaded = true,
    path = "/Users/ncrypthic/.local/share/nvim/site/pack/packer/start/rest.nvim",
    url = "https://github.com/rest-nvim/rest.nvim"
  },
  ["vim-closer"] = {
    loaded = true,
    path = "/Users/ncrypthic/.local/share/nvim/site/pack/packer/start/vim-closer",
    url = "https://github.com/rstacruz/vim-closer"
  },
  ["vim-delve"] = {
    loaded = false,
    needs_bufread = false,
    only_cond = false,
    path = "/Users/ncrypthic/.local/share/nvim/site/pack/packer/opt/vim-delve",
    url = "https://github.com/sebdah/vim-delve"
  },
  ["vim-dispatch"] = {
    commands = { "Dispatch", "Make", "Focus", "Start" },
    loaded = false,
    needs_bufread = false,
    only_cond = false,
    path = "/Users/ncrypthic/.local/share/nvim/site/pack/packer/opt/vim-dispatch",
    url = "https://github.com/tpope/vim-dispatch"
  },
  ["vim-fugitive"] = {
    loaded = true,
    path = "/Users/ncrypthic/.local/share/nvim/site/pack/packer/start/vim-fugitive",
    url = "https://github.com/tpope/vim-fugitive"
  },
  ["vim-go"] = {
    loaded = true,
    path = "/Users/ncrypthic/.local/share/nvim/site/pack/packer/start/vim-go",
    url = "https://github.com/fatih/vim-go"
  },
  ["vim-matchup"] = {
    after_files = { "/Users/ncrypthic/.local/share/nvim/site/pack/packer/opt/vim-matchup/after/plugin/matchit.vim" },
    loaded = false,
    needs_bufread = true,
    only_cond = false,
    path = "/Users/ncrypthic/.local/share/nvim/site/pack/packer/opt/vim-matchup",
    url = "https://github.com/andymass/vim-matchup"
  },
  ["vim-vsnip"] = {
    loaded = true,
    path = "/Users/ncrypthic/.local/share/nvim/site/pack/packer/start/vim-vsnip",
    url = "https://github.com/hrsh7th/vim-vsnip"
  },
  ["vista.vim"] = {
    loaded = true,
    path = "/Users/ncrypthic/.local/share/nvim/site/pack/packer/start/vista.vim",
    url = "https://github.com/liuchengxu/vista.vim"
  },
  ["vscode-js-debug"] = {
    loaded = false,
    needs_bufread = false,
    path = "/Users/ncrypthic/.local/share/nvim/site/pack/packer/opt/vscode-js-debug",
    url = "https://github.com/microsoft/vscode-js-debug"
  }
}

time([[Defining packer_plugins]], false)
-- Config for: gitsigns.nvim
time([[Config for gitsigns.nvim]], true)
try_loadstring("\27LJ\2\n6\0\0\3\0\3\0\0066\0\0\0'\2\1\0B\0\2\0029\0\2\0B\0\1\1K\0\1\0\nsetup\rgitsigns\frequire\0", "config", "gitsigns.nvim")
time([[Config for gitsigns.nvim]], false)
-- Config for: galaxyline.nvim
time([[Config for galaxyline.nvim]], true)
try_loadstring("\27LJ\2\n9\0\0\3\0\2\0\0046\0\0\0'\2\1\0B\0\2\1K\0\1\0\30galaxyline.themes.eviline\frequire\0", "config", "galaxyline.nvim")
time([[Config for galaxyline.nvim]], false)
-- Config for: rest.nvim
time([[Config for rest.nvim]], true)
try_loadstring("\27LJ\2\n>\0\1\5\0\4\0\0066\1\0\0009\1\1\0019\1\2\0015\3\3\0\18\4\0\0D\1\3\0\1\5\0\0\ttidy\a-i\a-q\6-\vsystem\afn\bvimî\2\1\0\6\0\r\0\0176\0\0\0'\2\1\0B\0\2\0029\0\2\0005\2\3\0005\3\4\0=\3\5\0025\3\6\0005\4\a\0003\5\b\0=\5\t\4=\4\n\3=\3\v\0024\3\0\0=\3\f\2B\0\2\1K\0\1\0\29custom_dynamic_variables\vresult\15formatters\thtml\0\1\0\1\tjson\ajq\1\0\3\19show_http_info\2\rshow_url\2\17show_headers\2\14highlight\1\0\2\fenabled\2\ftimeout\3–\1\1\0\a\26result_split_in_place\2\26skip_ssl_verification\1\17yank_dry_run\2\15encode_url\2\renv_file\t.env\20jump_to_request\2\28result_split_horizontal\1\nsetup\14rest-nvim\frequire\0", "config", "rest.nvim")
time([[Config for rest.nvim]], false)

-- Command lazy-loads
time([[Defining lazy-load commands]], true)
pcall(vim.api.nvim_create_user_command, 'Make', function(cmdargs)
          require('packer.load')({'vim-dispatch'}, { cmd = 'Make', l1 = cmdargs.line1, l2 = cmdargs.line2, bang = cmdargs.bang, args = cmdargs.args, mods = cmdargs.mods }, _G.packer_plugins)
        end,
        {nargs = '*', range = true, bang = true, complete = function()
          require('packer.load')({'vim-dispatch'}, {}, _G.packer_plugins)
          return vim.fn.getcompletion('Make ', 'cmdline')
      end})
pcall(vim.api.nvim_create_user_command, 'Dispatch', function(cmdargs)
          require('packer.load')({'vim-dispatch'}, { cmd = 'Dispatch', l1 = cmdargs.line1, l2 = cmdargs.line2, bang = cmdargs.bang, args = cmdargs.args, mods = cmdargs.mods }, _G.packer_plugins)
        end,
        {nargs = '*', range = true, bang = true, complete = function()
          require('packer.load')({'vim-dispatch'}, {}, _G.packer_plugins)
          return vim.fn.getcompletion('Dispatch ', 'cmdline')
      end})
pcall(vim.api.nvim_create_user_command, 'CodeActionMenu', function(cmdargs)
          require('packer.load')({'nvim-code-action-menu'}, { cmd = 'CodeActionMenu', l1 = cmdargs.line1, l2 = cmdargs.line2, bang = cmdargs.bang, args = cmdargs.args, mods = cmdargs.mods }, _G.packer_plugins)
        end,
        {nargs = '*', range = true, bang = true, complete = function()
          require('packer.load')({'nvim-code-action-menu'}, {}, _G.packer_plugins)
          return vim.fn.getcompletion('CodeActionMenu ', 'cmdline')
      end})
pcall(vim.api.nvim_create_user_command, 'Focus', function(cmdargs)
          require('packer.load')({'vim-dispatch'}, { cmd = 'Focus', l1 = cmdargs.line1, l2 = cmdargs.line2, bang = cmdargs.bang, args = cmdargs.args, mods = cmdargs.mods }, _G.packer_plugins)
        end,
        {nargs = '*', range = true, bang = true, complete = function()
          require('packer.load')({'vim-dispatch'}, {}, _G.packer_plugins)
          return vim.fn.getcompletion('Focus ', 'cmdline')
      end})
pcall(vim.api.nvim_create_user_command, 'Start', function(cmdargs)
          require('packer.load')({'vim-dispatch'}, { cmd = 'Start', l1 = cmdargs.line1, l2 = cmdargs.line2, bang = cmdargs.bang, args = cmdargs.args, mods = cmdargs.mods }, _G.packer_plugins)
        end,
        {nargs = '*', range = true, bang = true, complete = function()
          require('packer.load')({'vim-dispatch'}, {}, _G.packer_plugins)
          return vim.fn.getcompletion('Start ', 'cmdline')
      end})
time([[Defining lazy-load commands]], false)

vim.cmd [[augroup packer_load_aucmds]]
vim.cmd [[au!]]
  -- Filetype lazy-loads
time([[Defining lazy-load filetype autocommands]], true)
vim.cmd [[au FileType go ++once lua require("packer.load")({'vim-delve'}, { ft = "go" }, _G.packer_plugins)]]
time([[Defining lazy-load filetype autocommands]], false)
  -- Event lazy-loads
time([[Defining lazy-load event autocommands]], true)
vim.cmd [[au VimEnter * ++once lua require("packer.load")({'vim-matchup'}, { event = "VimEnter *" }, _G.packer_plugins)]]
time([[Defining lazy-load event autocommands]], false)
vim.cmd("augroup END")

_G._packer.inside_compile = false
if _G._packer.needs_bufread == true then
  vim.cmd("doautocmd BufRead")
end
_G._packer.needs_bufread = false

if should_profile then save_profiles() end

end)

if not no_errors then
  error_msg = error_msg:gsub('"', '\\"')
  vim.api.nvim_command('echohl ErrorMsg | echom "Error in packer_compiled: '..error_msg..'" | echom "Please check your config for correctness" | echohl None')
end
