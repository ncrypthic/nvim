vim.g.rest_nvim = {
  request = {
    skip_ssl_verification = true,
  }
}

vim.keymap.set("i", "<C-j>", function()
  vim.cmd[[botright Rest run]]
end)

vim.keymap.set("n", "<C-j>", function()
  vim.cmd[[botright Rest run]]
end)
