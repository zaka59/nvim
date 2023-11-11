local builtin = require('telescope.builtin')
local actions = require('telescope.actions')
local keymap = vim.keymap.set
local map = vim.api.nvim_set_keymap
local default_opts = {noremap = true, silent = true}

keymap('n', '<leader>ff', builtin.find_files, {})
keymap('n', '<leader>fk', builtin.keymaps, {})
keymap('n', '<leader>fg', builtin.live_grep, {})
keymap('n', '<leader>fb', builtin.buffers, {})
keymap('n', '<leader>fh', builtin.help_tags, {})
keymap('n', '<leader>fc', builtin.commands, {})
keymap('n', '<leader>fa', vim.lsp.buf.code_action, {})

-- keymap('n', '<leader>fi', function() require('telescope').extensions.git_worktree.git_worktrees() end)
keymap('n', '<leader>fi', function() require('telescope').extensions.git_worktree.create_git_worktree() end)


--[[ // TODO : close accol ]]
-- keymap('v', '<leader>fv', builtin.live_grep({}, 'cword'), {})
-- keymap('n', '<leader>fw', builtin.live_grep({}, 'cword'), {})
-- keymap('n', '<leader>fW', builtin.live_grep({}, 'cWORD'), {})
-- keymap('n', '<leader>fm', ':set opfunc=LiveGrepRawOperator<CR>g@', 'Find with movement')

map('v', '<Leader>fg', 'y<ESC>:Telescope live_grep default_text=<c-r>0<CR>', default_opts)
map('v', '<Leader>ff', 'y<ESC>:Telescope find_files default_text=<c-r>0<CR>', default_opts)
-- map('n', '<Leader>fc', 'y<ESC>:Telescope commands<CR>', default_opts)




require('telescope').setup {
	pickers = {
		find_files = {
			mappings = {
				n = {
					["t"] = actions.file_tab,
					["v"] = actions.file_vsplit,
					["s"] = actions.file_split,
				}
			},
			hidden = true
		},
		live_grep = {
			mappings = {
				n = {
					["t"] = actions.file_tab,
					["v"] = actions.file_vsplit,
					["s"] = actions.file_split,
				}
			},
			hidden = true
		}
	},
	defaults = { 
		file_ignore_patterns = {".git","node_modules","*.swo","*.swp",".DS_Store"}
	},
	extensions = {
	   ["ui-select"] = {
		require("telescope.themes").get_dropdown {
			-- even more opts
		}
		}
	}
}
require('telescope').load_extension('git_worktree')
require('telescope').load_extension('ui-select')
