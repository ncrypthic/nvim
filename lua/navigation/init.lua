local api = vim.api
local cmd = vim.cmd
local map = vim.keymap.set
local tree = require('nvim-tree')
local fzf = require('fzf-lua')
local treeapi = require('nvim-tree.api')

tree.setup{
  renderer = {
    group_empty = true
  },
  diagnostics = {
    enable = true
  }
}

map("n", "<leader>t", function()
    treeapi.tree.toggle()
end)

map("n", "<leader>g", function()
    cmd(':b#')
end)

map("n", "<leader>m", function()
  fzf.marks()
end)

map("n", "<leader><tab>", function()
    fzf.buffers()
end)

map("i", "<C-e>", function()
    fzf.grep_project({ rg_opts = "--column --line-number --no-heading --color=always --smart-case " ..
      "--max-columns=4096 --hidden -g !.git"})
end)

map("n", "<C-e>", function()
    fzf.grep_project({ rg_opts = "--column --line-number --no-heading --color=always --smart-case " ..
      "--max-columns=4096 --hidden -g !.git"})
end)

map("n", "<C-p>", function()
    fzf.files()
end)

treeapi.tree.toggle()

api.nvim_command('winc l')
