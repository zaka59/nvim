local set = vim.opt
local let = vim.g

set.number = true
set.tabstop = 4
set.shiftwidth = 4
set.softtabstop = 4
set.expandtab = false
--set.swapfile = false

let.mapleader =','

set.background = "dark" -- or "light" for light mode
vim.cmd([[colorscheme gruvbox]])
