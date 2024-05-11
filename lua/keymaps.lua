-- keymaps.lua
local map = vim.api.nvim_set_keymap
local builtin = require('telescope.builtin')
-- movement on insert mode
vim.api.nvim_set_keymap('i', '<C-h>', '<Left>', {noremap = true, silent = true})
vim.api.nvim_set_keymap('i', '<C-j>', '<Down>', {noremap = true, silent = true})
vim.api.nvim_set_keymap('i', '<C-k>', '<Up>', {noremap = true, silent = true})
vim.api.nvim_set_keymap('i', '<C-l>', '<Right>', {noremap = true, silent = true})
-- keymaps
map('n', '<Space>qq', ':wa<CR>:qa<CR>', { noremap = true, silent = true }) -- Space+qq: Cerrar sin Guardar
map("n", "<S-k>", ":m .-2<CR>==", { silent = true }) -- Shift+j: Mover línea hacia arriba
map("n", "<S-j>", ":m .+1<CR>==", { silent = true }) -- Shift+j: Mover línea hacia abajo
map('n', '<C-w>', ':w<CR>', { noremap = true, silent = false }) -- Control+w: Guardar (:w)
map('n', '<C-q>', ':q<CR>', { noremap = true, silent = false }) -- Control+q: Cerrar (:q)
-- telescope
vim.keymap.set('n', '<Space>ff', builtin.find_files, {})
vim.keymap.set('n', '<Space>fg', builtin.live_grep, {})
vim.keymap.set('n', '<Space>fb', builtin.buffers, {})
vim.keymap.set('n', '<Space>fh', builtin.help_tags, {})
