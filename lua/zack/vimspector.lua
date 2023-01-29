local let = vim.g
local keymap = vim.api.nvim_set_keymap

let.vimspector_base_dir = '~/.config/nvim/pack/vimspector/start/vimspector'
let.vimspector_enable_mappings = 'HUMAN'


keymap('n', '<Leader>dd', ':call vimspector#Launch()<CR>', {noremap = true, silent = true})
keymap('n', '<Leader>dr', ':call vimspector#Reset()<CR>', {noremap = true, silent = true})
keymap('n', '<Leader>dc', ':call vimspector#Continue()<CR>', {noremap = true, silent = true})

keymap('n', '<Leader>db', ':call vimspector#ToggleBreakpoint()<CR>', {noremap = true, silent = true})
keymap('n', '<Leader>dB', ':call vimspector#ClearBreakpoints()<CR>', {noremap = true, silent = true})

keymap('n', '<Leader>sr', '<Plug>VimspectorRestart', {noremap = true, silent = true})
keymap('n', '<Leader>sp', '<Plug>VimspectorStepOut', {noremap = true, silent = true})
keymap('n', '<Leader>si', '<Plug>VimspectorStepInto', {noremap = true, silent = true})
keymap('n', '<Leader>so', '<Plug>VimspectorStepOver', {noremap = true, silent = true})


-- for normal mode - the word under the curso
keymap('n', '<Leader>de', '<Plug>VimspectorBalloonEval', {silent = true})
-- for visual mode, the visually selected text
keymap('v', '<Leader>de', '<Plug>VimspectorBalloonEval', {silent = true})
