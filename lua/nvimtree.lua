local function my_on_attach(bufnr)
  local api = require "nvim-tree.api"
  local function opts(desc)
    return { desc = "nvim-tree: " .. desc, buffer = bufnr, noremap = true, silent = true, nowait = true }
  end
  -- default mappings
  api.config.mappings.default_on_attach(bufnr) 
  -- custom keymaps
  -- space + k: open on new tab
  vim.keymap.set('n', '<Space>k', api.node.open.tab, opts('Open: New Tab'))
  -- space + h: toggle tree
  vim.api.nvim_set_keymap('n', '<Space>h', ":NvimTreeToggle<CR>", { noremap = true })
  -- space + hh: switch focus between buffer and tree
  vim.keymap.set('n', '<Space>hh', function()
    -- verifying if tree is visible
    if api.tree.is_visible() then
        -- changing windows
        vim.cmd('wincmd p')
    else
        -- open if is not
        api.tree.open()
    end
  end, {noremap = true, silent = true})
  -- end
end
-- setup nvim-tree
require("nvim-tree").setup({
  sort = {
    sorter = "case_sensitive",
  },
  on_attach = my_on_attach, -- custom Keybinds
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
