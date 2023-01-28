local let = vim.g
local keymap = vim.api.nvim_set_keymap

let.mapleader =','

-- copy to clipboard
keymap("v", "<c-c>", '"*y', {silent=true})
-- TAB in general mode will move to text buffer
keymap("n", '<TAB>', 'gt<CR>', {silent=true})
-- SHIFT-TAB will go back
keymap("n", '<S-TAB>', '<C-w><C-w> <CR>', {silent=true})
-- Ctrl + hjkl to resize windows
keymap("n", '<C-j>', ':resize -2<CR>', {silent=true})
keymap("n", '<C-k>', ':resize +2<CR>', {silent=true})
keymap("n", '<C-h>', ':vertical resize -2<CR>', {silent=true})
keymap("n", '<C-l>', ':vertical resize +2<CR>', {silent=true})

