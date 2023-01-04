vim.o.shiftwidth=2
vim.o.softtabstop=2

local dap, dapui = require("dap"), require("dapui")

dapui.setup{}

dap.adapters.node2 = {
  type = "executable",
  command = "node",
  args = {os.getenv("HOME") .. "/.local/share/microsoft/vscode-node-debug2/out/src/nodeDebug.js"}
}

dap.configurations.javascript = {
  {
    name = "Launch",
    type = "node2",
    request = "launch",
    runtimeExecutable = "node",
    args = {"--inspect", "${file}"},
    cwd = "${workspaceFolder}",
    protocol = "inspector",
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
