-- NOTE: If you are using nvim-treesitter with ~ensure_installed = "all"~ option
-- add ~org~ to ignore_install
require('orgmode').setup({
  org_agenda_files = { os.getenv("HOME") .. '/orgmode/**/*.org', os.getenv("HOME") .." /orgmode/*.org" },
  org_default_notes_file = '~/orgmode/index.org',
  org_hide_leading_stars = true
})
