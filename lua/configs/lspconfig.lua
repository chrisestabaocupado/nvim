local lsp = require("lspconfig")
local coq = require("coq")
require("mason").setup()
-- configurando mason
require("mason-lspconfig").setup({
	ensure_installed = { "tsserver" }
})
-- configurando lsp lua
lsp.lua_ls.setup({
	coq.lsp_ensure_capabilities{},
	settings = {
		Lua = {
			diagnostics = {
				globals = { "vim" }
			},
		}
	}
})
-- configurando tsserver
lsp.tsserver.setup({
	coq.lsp_ensure_capabilities{}
})
-- iniciando coq
vim.cmd('COQnow -s')
-- desactivar keymaps recomendados de coq 
vim.g.coq_settings = {
    keymap = {
        ['recommended'] = false,
    }
}
