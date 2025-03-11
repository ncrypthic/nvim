local api = vim.api
local cmd = vim.cmd
local map = vim.keymap.set
local tree = require('nvim-tree')
local fzf = require('fzf-lua')
local treeapi = require('nvim-tree.api')
local builtin = require('telescope.builtin')

tree.setup{
  renderer = {
    group_empty = true
  },
  diagnostics = {
    enable = true
  },
  update_focused_file = {
    enable = true
  }
}

map("n", "<leader>t", treeapi.tree.toggle)

map("n", "<leader>g", function()
    cmd(':b#')
end)

map("n", "<leader>m", builtin.marks)

map("n", "<leader><tab>", builtin.buffers)

map("i", "<C-e>", builtin.live_grep)

map("n", "<C-e>", builtin.live_grep)

map("n", "<C-p>", builtin.find_files)

map("n", "<leader>gs", builtin.git_status)

map("n", "<leader>f", treeapi.tree.focus)

treeapi.tree.toggle()

api.nvim_command('winc l')
api.nvim_create_autocmd("FileType", { pattern = "TelescopeResults", command = [[setlocal nofoldenable]] })
