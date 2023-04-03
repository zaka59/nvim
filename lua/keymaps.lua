local let = vim.g
local keymap = vim.api.nvim_set_keymap

let.mapleader =','
local bufopts = { noremap=true, silent=true}

-- copy to clipboard
keymap("v", "<c-c>", '"*y', bufopts)
keymap("v", ";c", '"*y', bufopts)
-- TAB in general mode will move to text buffer
--keymap("n", '<TAB>', 'gt<CR>', bufopts)
-- SHIFT-TAB will go back
keymap("n", '<S-TAB>', '<C-w><C-w> <CR>', bufopts)
-- Ctrl + hjkl to resize windows
keymap("n", '<C-j>', ':resize -2<CR>', bufopts)
keymap("n", '<C-k>', ':resize +2<CR>', bufopts)
keymap("n", '<C-h>', ':vertical resize -2<CR>', bufopts)
keymap("n", '<C-l>', ':vertical resize +2<CR>', bufopts)


-- remap of useful commands
keymap("n", ";d", '<C-x>', bufopts)
keymap("n", ";f", '<C-a>', bufopts)


-- Toogle theme

-- Function to toggle between dark and light backgrounds
function light()
    vim.opt.background = 'light'
    vim.cmd('colorscheme solarized')
end
function dark()
    vim.opt.background = 'dark'
    vim.cmd('colorscheme gruvbox')
end

keymap('n', '<Leader>t', ':lua light()<CR>', { noremap = true, silent = false })
keymap('n', '<Leader>T', ':lua dark()<CR>', { noremap = true, silent = false })


keymap('t', '<Esc>', '<C-\\><C-n>',bufopts) -- Escape from terminal with escape key
keymap('t', 'jk', '<C-\\><C-n>',bufopts) -- Escape from terminal with escape key
keymap('t', '<Leader>k', '<Up>',bufopts) -- Escape from terminal with escape key
keymap('t', '<Leader>j', '<Down>',bufopts) -- Escape from terminal with escape key
