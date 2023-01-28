vim.keymap.set("n", "<leader>v", require("nvim-tree").toggle)


require("nvim-tree").setup({
  sort_by = "case_sensitive",
  git = {
    enable = true,
  },
  view = {
    width = 30,
    mappings = {
      list = {
        { key = "u", action = "dir_up" },
      },
    },
  },
  renderer = {
    group_empty = true,
  },
  filters = {
    dotfiles = true,
  },
})
