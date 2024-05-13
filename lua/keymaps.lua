-- keymaps.lua
local map = vim.api.nvim_set_keymap
local builtin = require('telescope.builtin')
-- keymaps
map('n', '<Space>qq', ':wa<CR>:qa<CR>', { noremap = true, silent = true }) -- Space+qq: Cerrar sin Guardar
map('n', '<C-w>', ':w<CR>', { noremap = true, silent = false }) -- Control+w: Guardar (:w)
map('n', '<C-q>', ':q<CR>', { noremap = true, silent = false }) -- Control+q: Cerrar (:q)
-- move line and selected block on visual mode
map("n", "<S-k>", ":m .-2<CR>==", { silent = true }) -- Shift+k: Mover línea hacia arriba
map("n", "<S-j>", ":m .+1<CR>==", { silent = true }) -- Shift+j: Mover línea hacia abajo
map('v', "<S-k>", ":move '<-2<CR>gv=gv", { noremap = true }) -- Shift+k: Mover bloque seleccionado hacia arriba
map('v', "<S-j>", ":move '>+1<CR>gv=gv", { noremap = true }) -- Shift+j: Mover bloque seleccionado hacia abajo
-- telescope
vim.keymap.set('n', '<Space>ff', builtin.find_files, {})
vim.keymap.set('n', '<Space>fg', builtin.live_grep, {})
vim.keymap.set('n', '<Space>fb', builtin.buffers, {})
vim.keymap.set('n', '<Space>fh', builtin.help_tags, {})
