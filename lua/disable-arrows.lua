local map = vim.api.nvim_set_keymap
-- Deshabilitar las teclas de flecha en todos los modos
map('n', '<Up>', '<NOP>', {noremap = true, silent = true})
map('n', '<Down>', '<NOP>', {noremap = true, silent = true})
map('n', '<Left>', '<NOP>', {noremap = true, silent = true})
map('n', '<Right>', '<NOP>', {noremap = true, silent = true})
map('i', '<Up>', '<NOP>', {noremap = true, silent = true})
map('i', '<Down>', '<NOP>', {noremap = true, silent = true})
map('i', '<Left>', '<NOP>', {noremap = true, silent = true})
map('i', '<Right>', '<NOP>', {noremap = true, silent = true})
map('v', '<Up>', '<NOP>', {noremap = true, silent = true})
map('v', '<Down>', '<NOP>', {noremap = true, silent = true})
map('v', '<Left>', '<NOP>', {noremap = true, silent = true})
map('v', '<Right>', '<NOP>', {noremap = true, silent = true})
-- 
map('i', '<S-h>', '<Left>', { noremap = true, silent = true })
map('i', '<S-j>', '<Down>', { noremap = true, silent = true })
map('i', '<S-k>', '<Up>', { noremap = true, silent = true })
map('i', '<S-l>', '<Right>', { noremap = true, silent = true })
--
map('i', '<CS-h>', '<CS-Left>', { noremap = true, silent = true })
map('i', '<CS-l>', '<CS-Right>', { noremap = true, silent = true })
map('n', '<CS-h>', '<CS-Left>', { noremap = true, silent = true })
map('n', '<CS-l>', '<CS-Right>', { noremap = true, silent = true })
