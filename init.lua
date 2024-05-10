require("plugins")
require("keymaps")

-- Habilitar números de línea absolutos y relativos
vim.opt.number = true
vim.opt.relativenumber = true

-- disable netrw at the very start of your init.lua
vim.g.loaded_netrw = 1
vim.g.loaded_netrwPlugin = 1

-- enable 24-bit colour
vim.opt.termguicolors = true

-- color scheme
vim.cmd.colorscheme "catppuccin-mocha"

-- Setuup nvim-tree
require("nvim-tree").setup({
  sort = {
    sorter = "case_sensitive",
  },
  view = {
    width = 30,
  },
  renderer = {
    group_empty = true,
  },
  filters = {
    dotfiles = true,
  },
  actions = {
  	open_file = {
		quit_on_open = false,
		eject = true,
		resize_window = true,
	}
  },
  tab = {
        sync = {
          open = true,
          close = false,
          ignore = {},
        },
  },
})
