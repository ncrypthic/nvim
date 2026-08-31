local map = vim.keymap.set
local note_dir = vim.uv.os_homedir() .. "/Notes"
local dump_dir = note_dir .. "/raw"
local dump_title_format = "%Y%m%d%H%M%S.md"
local nvim_tree = require("nvim-tree.api")
-- local lfs = require('lfs')

local function dump_note()
  local dump_file = dump_dir .. "/" .. os.date(dump_title_format)
  vim.fn.mkdir(dump_dir, "p")
  -- lfs.mkdir(dump_dir)
  --
  -- lfs.touch(dump_file)

  vim.cmd("edit " .. dump_file)
end

local function open_notes()
  vim.fn.mkdir(note_dir, "p")
  vim.cmd("cd " .. note_dir)
  nvim_tree.tree.change_root(note_dir)
  vim.cmd("edit " .. note_dir)
end

local function search_notes()
  vim.cmd("Telescope live_grep search_dirs="..note_dir)
end

vim.api.nvim_create_user_command("TakeNote", dump_note, {})

vim.api.nvim_create_user_command("OpenNotes", open_notes, {})

vim.api.nvim_create_user_command("SearchNotes", search_notes, {})

map("n", "<leader>dn", function ()
  vim.cmd("TakeNote")
end)

map("n", "<leader>nn", function ()
  vim.cmd("OpenNotes")
end)
