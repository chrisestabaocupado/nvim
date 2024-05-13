require("mason").setup()

require("mason-lspconfig").setup({
	ensure_installed = { "tsserver" }
})

local lspconfig = require("lspconfig")

local lsp = require "lspconfig"
local coq = require "coq"

lsp.tsserver.setup{}

lspconfig.tsserver.setup({
	coq.lsp_ensure_capabilities{}
})

vim.cmd('COQnow -s')
