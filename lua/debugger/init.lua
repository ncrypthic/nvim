local dap = require('dap')

dap.adapters.kotlin = {
  type = "executable",
  command =  os.getenv('HOME') .. "/.local/share/nvim/mason/bin/kotlin-debug-adapter",
  options = {
    auto_continue_if_many_stopped = false
  },
}

vim.fn.sign_define('DapBreakpoint', {text='🔴', texthl='red', linehl='', numhl=''})

require('dapui').setup{}

dap.listeners.after.event_initialized["dapui_config"] = function()
  require('dapui').open()
end

dap.listeners.before.event_terminated["dapui_config"] = function()
  require('dapui').close()
end

dap.listeners.after.event_exited["dapui_config"] = function()
  require('dapui').close()
end
