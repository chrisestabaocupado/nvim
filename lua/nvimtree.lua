-- keymaps.lua
local map = vim.api.nvim_set_keymap
-- Custom Keybinds
local function my_on_attach(bufnr)
  local api = require "nvim-tree.api"
  local function opts(desc)
    return { desc = "nvim-tree: " .. desc, buffer = bufnr, noremap = true, silent = true, nowait = true }
  end
  -- default mappings
  api.config.mappings.default_on_attach(bufnr) 
  -- custom keymaps
  vim.keymap.set('n', '<S-Up>', api.node.open.tab, opts('Open: New Tab')) -- Shift + Up: Open Tab
  vim.keymap.set('n', '<S-Left>', api.tree.focus) -- Shift + Left: Focus Tree
  vim.keymap.set('n', '<CS-Left>', api.tree.toggle) -- Shift + Left: Focus Tree
  -- cwitching between buffer and tree
  vim.keymap.set('n', '<S-Left>', function()
    -- cerificar si el árbol está visible
    if api.tree.is_visible() then
        -- cerrar el árbol y cambiar al buffer anterior
        vim.cmd('wincmd p')
    else
        -- abrir el árbol
        api.tree.open()
    end
  end, {noremap = true, silent = true})

end
-- setup nvim-tree
require("nvim-tree").setup({
  sort = {
    sorter = "case_sensitive",
  },
  on_attach = my_on_attach, -- Custom Keybinds
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
})
