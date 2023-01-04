local api = vim.api
local cmd = vim.cmd
local map = vim.keymap.set
local tree = require('nvim-tree')
local fzf = require('fzf-lua')

tree.setup{}

map("n", "<leader>t", function()
    tree.toggle()
end)

map("n", "<leader>g", function()
    cmd(':b#')
end)

map("n", "<leader><tab>", function()
    fzf.buffers()
end)

map("i", "<C-e>", function()
    fzf.grep_project()
end)

map("n", "<C-e>", function()
    fzf.grep_project()
end)

map("n", "<C-p>", function()
    fzf.files()
end)

tree.toggle()

api.nvim_command('winc l')
