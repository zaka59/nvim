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
keymap("n", ";f", '<C-d>', bufopts)


-- Toogle theme

-- Function to toggle between dark and light backgrounds
function toggle_background()
  if vim.g.background_mode == 'light' then
    vim.opt.background = 'dark'
    --vim.cmd('colorscheme <your-dark-colorscheme>')
    -- vim.g.background_mode = 'dark'
  else
    vim.opt.background = 'light'
    --vim.cmd('colorscheme <your-light-colorscheme>')
    -- vim.g.background_mode = 'light'
  end
end

keymap('n', '<C-Lock>', ':lua toggle_background()<CR>', { noremap = true, silent = false })
