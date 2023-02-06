local api = vim.api
local fzf = require('fzf-lua')

api.nvim_create_user_command("Gco", function(opts)
    if opts.args == nil or opts.args == "" then
      fzf.git_branches()
    else
      api.nvim_command("Git checkout "..opts.args)
    end
end, {nargs="*"})
