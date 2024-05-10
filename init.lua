require("plugins")
require("keymaps")
require("nvimtree")
-- Set tab size to 4 spaces
vim.opt.tabstop = 4
-- Set shiftwidth to 4 spaces
vim.opt.shiftwidth = 4
-- Set softtabstop to 4 spaces
vim.opt.softtabstop = 4
-- Habilitar números de línea absolutos y relativos
vim.opt.number = true
vim.opt.relativenumber = true
-- disable netrw at the very start of your init.lua
vim.g.loaded_netrw = 1
vim.g.loaded_netrwPlugin = 1
-- enable 24-bit colour
vim.opt.termguicolors = true
-- color scheme
vim.cmd.colorscheme "tokyonight-night"
