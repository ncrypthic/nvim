local api = vim.api
local cmd = vim.cmd

vim.o.showmatch = true
vim.o.hlsearch = true
vim.o.number = true
vim.o.autoindent = true
vim.o.expandtab = true
vim.o.cc = "80"
vim.o.tabstop = 4
vim.o.shiftwidth = 4
vim.o.softtabstop = 4
-- vim.o.background = 'dark'
vim.o.foldmethod = 'indent'
vim.o.fillchars = 'stl: ,stlnc: ,vert: ,fold:-,diff:-'

vim.g.loaded_netrw = 1
vim.g.loaded_netrwPlugin = 1
vim.g.splitright = 1

api.nvim_set_option('updatetime', 1000)

require('config.lazy')
require('navigation')
require('editor')
require('debugger')

cmd([[colorscheme gruvbox]])
