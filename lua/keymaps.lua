-- keymaps.lua
local map = vim.api.nvim_set_keymap
-- Mapeo de teclas
vim.api.nvim_set_keymap('n', '<C-s>', ':w<CR>', {noremap = true})
-- Mapeo de teclas para moverse entre pestañas con Shift y flechas de dirección
-- vim.api.nvim_set_keymap('n', '<S-Left>', ':tabprevious<CR>', {noremap = true, silent = true})
vim.api.nvim_set_keymap('n', '<S-Right>', ':tabnext<CR>', {noremap = true, silent = true})
-- Mapeo de teclas para alternar la visibilidad de NvimTree con Shift + Flecha Izquierda
vim.api.nvim_set_keymap('n', '<S-Left>', ':NvimTreeToggle<CR>', {noremap = true, silent = true})
-- Keymap to close the current tab while saving with Shift+Q
vim.api.nvim_set_keymap('n', '<S-q>', ':wq<CR>', {noremap = true, silent = true})
-- Mapeo de teclas para cerrar todas las pestañas sin guardar con Espacio + Q Q
vim.api.nvim_set_keymap('n', '<Space>qq', ':wa<CR>:qa<CR>', {noremap = true, silent = true})

