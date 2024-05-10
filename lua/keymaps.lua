-- keymaps.lua
local map = vim.api.nvim_set_keymap
-- tabs
vim.api.nvim_set_keymap('n', '<S-Tab>', ':tabprevious<CR>', {noremap = true, silent = true})
-- mapeo de teclas--
map('n', '<leader>qq', ':wa<CR>:qa<CR>', { noremap = true, silent = true }) -- Space+qq: Cerrar sin Guardar
map("n", "<S-Down>", ":m .+1<CR>==", { silent = true }) -- Shift+j: Mover línea hacia arriba
map("n", "<S-Up>", ":m .-2<CR>==", { silent = true }) -- Shift+j: Mover línea hacia abajo
map('n', '<C-w>', ':w<CR>', { noremap = true, silent = false }) -- Control+w: Guardar (:w)
map('n', '<C-q>', ':q<CR>', { noremap = true, silent = false }) -- Control+q: Cerrar (:q)
-- telescope
local builtin = require('telescope.builtin')
vim.keymap.set('n', '<leader>ff', builtin.find_files, {})
vim.keymap.set('n', '<leader>fg', builtin.live_grep, {})
vim.keymap.set('n', '<leader>fb', builtin.buffers, {})
vim.keymap.set('n', '<leader>fh', builtin.help_tags, {})
