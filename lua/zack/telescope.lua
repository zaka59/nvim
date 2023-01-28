local builtin = require('telescope.builtin')
local key = vim.keymap
key.set('n', '<leader>ff', builtin.find_files, {})
key.set('n', '<leader>fk', builtin.keymaps, {})
key.set('n', '<leader>fg', builtin.live_grep, {})
key.set('n', '<leader>fb', builtin.buffers, {})
key.set('n', '<leader>fh', builtin.help_tags, {})

require('telescope').setup {}
