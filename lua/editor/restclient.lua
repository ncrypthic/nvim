
vim.keymap.set("i", "<C-j>", function()
  require('rest-nvim').run()
end)

vim.keymap.set("n", "<C-j>", function()
  require('rest-nvim').run()
end)
