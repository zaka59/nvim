vim.o.updatetime = 250
vim.cmd [[autocmd! CursorHold,CursorHoldI * lua vim.diagnostic.open_float(nil, {focus=false, scope="cursor"})]]

vim.cmd([[
	let g:solarized_termcolors=256
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


	" Viewer options: One may configure the viewer either by specifying a built-in
	" viewer method:
	let g:vimtex_view_method = 'zathura'

	" Or with a generic interface:
	" let g:vimtex_view_general_viewer = 'okular'
	" let g:vimtex_view_general_options = '--unique file:@pdf\#src:@line@tex'

	" VimTeX uses latexmk as the default compiler backend. If you use it, which is
	" strongly recommended, you probably don't need to configure anything. If you
	" want another compiler backend, you can change it as follows. The list of
	" supported backends and further explanation is provided in the documentation,
	" see ":help vimtex-compiler".
	" let g:vimtex_compiler_method = 'latexrun'

	" Most VimTeX mappings rely on localleader and this can be changed with the
	" following line. The default is usually fine and is the symbol "\".
	" let maplocalleader = ","

]])
	  -- let g:markdown_fenced_languages = ['html', 'python', 'lua', 'vim', 'typescript', 'javascript', 'bash', 'java', 'c']


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
