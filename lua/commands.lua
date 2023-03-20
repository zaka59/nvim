vim.o.updatetime = 250
vim.cmd [[autocmd! CursorHold,CursorHoldI * lua vim.diagnostic.open_float(nil, {focus=false, scope="cursor"})]]

vim.cmd([[
	colorscheme gruvbox

	highlight SignColumn guibg=whatever ctermbg=none
	highlight GitGutterAdd    guifg=#009900 ctermfg=2
	highlight GitGutterChange guifg=#bbbb00 ctermfg=3
	highlight GitGutterDelete guifg=#ff2222 ctermfg=1


	  highlight! DiagnosticLineNrError guibg=#51202A guifg=#FF0000 gui=bold
	  highlight! DiagnosticLineNrWarn guibg=#51412A guifg=#FFA500 gui=bold
	  highlight! DiagnosticLineNrInfo guibg=#1E535D guifg=#00FFFF gui=bold
	  highlight! DiagnosticLineNrHint guibg=#1E205D guifg=#0000FF gui=bold

	  sign define DiagnosticSignError text= texthl=DiagnosticSignError linehl= numhl=DiagnosticLineNrError
	  sign define DiagnosticSignWarn text= texthl=DiagnosticSignWarn linehl= numhl=DiagnosticLineNrWarn
	  sign define DiagnosticSignInfo text= texthl=DiagnosticSignInfo linehl= numhl=DiagnosticLineNrInfo
	  sign define DiagnosticSignHint text= texthl=DiagnosticSignHint linehl= numhl=DiagnosticLineNrHint
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
