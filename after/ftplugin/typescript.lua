vim.o.shiftwidth=2
vim.o.softtabstop=2

local dap, dapui = require("dap"), require("dapui")
local dap_js = require('dap-vscode-js')

dap_js.setup( {
  debugger_path = "/Users/nbmhqa129/.local/share/nvim/lazy/vscode-js-debug",
  adapters = { 'pwa-node', 'pwa-chrome', 'pwa-msedge', 'node-terminal', 'pwa-extensionHost' }
})

dapui.setup{}

dap.adapters.node2 = {
  type = "executable",
  command = "node",
  args = {os.getenv("HOME") .. "/.nvm/versions/node/v18.19.0/lib/node_modules/node-debug2/bin/node-debug.js"}
}

dap.configurations.typescript = {
  {
    name = "Launch",
    type = "node2",
    request = "launch",
    runtimeExecutable = "node",
    runtimeArgs = { "-r", "ts-node/register", "--nolazy"},
    args = {"--inspect", "${file}"},
    cwd = "${workspaceFolder}",
    sourceMaps = true,
    protocol = "inspector",
    outFiles = {"${workspaceFolder}/src/**/*.js"},
  },
  {
    name = "Attach process (port: 9229)",
    type = "pwa-node",
    request = "attach",
    processId = require'dap.utils'.pick_process,
    cwd = "${workspaceFolder}"
  },
  {
    name = "Run Jest",
    type = "node2",
    request = "launch",
    runtimeExecutable = "node",
    args = { "--inspect", "${workspaceFolder}/node_modules/.bin/jest", "--runInBand", "--coverage", "false"},
    sourceMaps = true,
    protocol = "inspector",
  },
  {
    name = "Run Jest (File)",
    type = "node2",
    request = "launch",
    runtimeExecutable = "node",
    args = { "--inspect", "${workspaceFolder}/node_modules/.bin/jest", "--runInBand", "--coverage", "false", "${file}"},
    sourceMaps = true,
    protocol = "inspector",
  },
}

dap.listeners.after.event_initialized["dapui_config"] = function()
  dapui.open()
end

dap.listeners.after.event_terminated["dapui_config"] = function()
  dapui.close()
end

dap.listeners.after.event_exited["dapui_config"] = function()
  dapui.close()
end
