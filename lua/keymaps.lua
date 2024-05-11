-- keymaps.lua
local map = vim.api.nvim_set_keymap
local builtin = require('telescope.builtin')
-- tabs
vim.api.nvim_set_keymap('n', '<S-h>', ':tabprevious<CR>', {noremap = true, silent = true})
vim.api.nvim_set_keymap('n', '<S-l>', ':tabnext<CR>', {noremap = true, silent = true})
-- mapeo de teclas--
map('n', '<Space>qq', ':wa<CR>:qa<CR>', { noremap = true, silent = true }) -- Space+qq: Cerrar sin Guardar
map("n", "<S-k>", ":m .-2<CR>==", { silent = true }) -- Shift+j: Mover línea hacia arriba
map("n", "<S-j>", ":m .+1<CR>==", { silent = true }) -- Shift+j: Mover línea hacia abajo
map('n', '<C-w>', ':w<CR>', { noremap = true, silent = false }) -- Control+w: Guardar (:w)
map('n', '<C-q>', ':q<CR>', { noremap = true, silent = false }) -- Control+q: Cerrar (:q)
-- telescope
vim.keymap.set('n', '<leader>ff', builtin.find_files, {})
vim.keymap.set('n', '<leader>fg', builtin.live_grep, {})
vim.keymap.set('n', '<leader>fb', builtin.buffers, {})
vim.keymap.set('n', '<leader>fh', builtin.help_tags, {})
