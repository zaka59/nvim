local set = vim.opt

set.list = true
set.listchars:append "eol:↴"

require("indent_blankline").setup {
    show_end_of_line = true,
}
