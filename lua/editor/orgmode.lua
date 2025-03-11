-- NOTE: If you are using nvim-treesitter with ~ensure_installed = "all"~ option
-- add ~org~ to ignore_install
-- require('nvim-treesitter.configs').setup({
--   ensure_installed = 'all',
--   ignore_install = { 'org' },
-- })
require('orgmode').setup({
  org_agenda_files = { os.getenv("HOME") .. '/Org/**/*.org', os.getenv("HOME") .." /Org/*.org" },
  org_default_notes_file = '~/Org/main.org',
  org_hide_leading_stars = true
})
