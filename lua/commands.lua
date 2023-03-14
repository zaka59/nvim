vim.cmd([[
	colorscheme gruvbox

	highlight SignColumn guibg=whatever ctermbg=none
	highlight GitGutterAdd    guifg=#009900 ctermfg=2
	highlight GitGutterChange guifg=#bbbb00 ctermfg=3
	highlight GitGutterDelete guifg=#ff2222 ctermfg=1
]])

local api = vim.api

-- Disable caps lock while vim is running
-- api.nvim_create_autocmd('VimEnter', {
--   pattern = "*",
--   command = "!setxkbmap -option ctrl:nocaps"
-- })
--
-- api.nvim_create_autocmd('VimLeave', {
--   pattern = "*",
--   command = "!setxkbmap -option"
-- })
