local api = vim.api
local cmd = vim.cmd
local map = vim.keymap.set

vim.o.showmatch = true
vim.o.hlsearch = true
vim.o.number = true
vim.o.autoindent = true
vim.o.expandtab = true
vim.o.cc = 60
vim.o.tabstop = 4
vim.o.shiftwidth = 4
vim.o.softtabstop = 4
vim.o.background = 'dark'
vim.o.foldmethod = 'indent'

vim.g.loaded_netrw = 1
vim.g.loaded_netrwPlugin = 1

vim.mapleader = "\\"

cmd([[colorscheme gruvbox]])

require('plugins')
require('navigation')
require('editor')
