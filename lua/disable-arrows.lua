-- Disable arrow keys in all modes
vim.api.nvim_set_keymap('', '<Up>', '<Nop>', {noremap = true, silent = true})
vim.api.nvim_set_keymap('', '<Down>', '<Nop>', {noremap = true, silent = true})
vim.api.nvim_set_keymap('', '<Left>', '<Nop>', {noremap = true, silent = true})
vim.api.nvim_set_keymap('', '<Right>', '<Nop>', {noremap = true, silent = true})
-- Disable arrow keys in INSERT
vim.api.nvim_set_keymap('i', '<Up>', '<Nop>', {noremap = true, silent = true})
vim.api.nvim_set_keymap('i', '<Down>', '<Nop>', {noremap = true, silent = true})
vim.api.nvim_set_keymap('i', '<Left>', '<Nop>', {noremap = true, silent = true})
vim.api.nvim_set_keymap('i', '<Right>', '<Nop>', {noremap = true, silent = true})
