local set = vim.opt
local let = vim.g

set.number = true
set.tabstop = 4
set.shiftwidth = 4
set.softtabstop = 4
set.expandtab = false
set.background = "dark" -- or "light" for light mode
--set.swapfile = false
set.fillchars = {eob=' '}

let.loaded_netrw = 1
let.loaded_netrwPlugin = 1

require('keymaps')
require('commands')
