local dap, dap_kotlin = require("dap"), require('dap-kotlin')

dap_kotlin.setup{}

local dapui = require("dapui")

dap.listeners.after.event_initialized["dapui_config"] = function()
  dapui.open()
end

dap.listeners.before.event_exited["dapui_config"] = function()
  dapui.close()
end

table.insert(dap.configurations.kotlin, {
  name = "Attach process (port: 5005)",
  type = "kotlin",
  request = "attach",
  projectRoot = "${workspaceFolder}",
  mainClass = "org.junit.platform.console.ConsoleLauncher --scan-class-path",
  hostName= "localhost",
  port=5005,
  timeout=2000
})

table.insert(dap.configurations.kotlin, {
  name = "Application",
  type = "kotlin",
  request = "launch",
  projectRoot = "${workspaceFolder}",
  mainClass = function()
    local class_name = vim.fn.input("Main class: ")
    print(class_name)
    return class_name
  end
})

table.insert(dap.configurations.kotlin, {
  name = "Application (need Arguments)",
  type = "kotlin",
  request = "launch",
  projectRoot = "${workspaceFolder}",
  mainClass = function()
    local class_name = vim.fn.input("Main class: ")
    print(class_name)
    return class_name
  end,
  vmArguments = function()
    return vim.fn.input("vm arguments: ")
  end
})
