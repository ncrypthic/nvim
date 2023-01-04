local api = vim.api
local fzf = require('fzf-lua')

api.nvim_create_user_command("Gco", function()
    fzf.git_branches()
end, {bang=true})
