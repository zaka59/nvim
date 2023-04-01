local set = vim.opt

set.list = true
set.listchars:append "eol:↴"

require("indent_blankline").setup {
    -- space_char_blankline = " ",
    show_end_of_line = true,
	-- indent_blankline_strict_tabs = true,
}
