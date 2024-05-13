local fn = vim.fn

-- Automatically install packer
local install_path = fn.stdpath("data") .. "/site/pack/packer/start/packer.nvim"
if fn.empty(fn.glob(install_path)) > 0 then
	PACKER_BOOTSTRAP = fn.system({
		"git",
		"clone",
		"--depth",
		"1",
		"https://github.com/wbthomason/packer.nvim",
		install_path,
	})
	print("Installing packer close and reopen Neovim...")
	vim.cmd([[packadd packer.nvim]])
end

-- Autocommand that reloads neovim whenever you save the plugins.lua file
vim.cmd([[
  augroup packer_user_config
    autocmd!
    autocmd BufWritePost plugins.lua source <afile> | PackerSync
  augroup end
]])

-- Use a protected call so we don't error out on first use
local status_ok, packer = pcall(require, "packer")
if not status_ok then
	return
end

-- Have packer use a popup window
packer.init({
	display = {
		open_fn = function()
			return require("packer.util").float({ border = "rounded" })
		end,
	},
})

-- Install your plugins here
return packer.startup(function(use)
	use ("wbthomason/packer.nvim") -- Have packer manage itself
	use { "catppuccin/nvim", as = "catppuccin" } -- Catppuchin Color Schemes
	use { "folke/tokyonight.nvim", as = "tokyonight" } -- Tokyonight Color Schemes
	use { "vim/colorschemes" } -- Aditional Color Schemes
	use { "nvim-tree/nvim-tree.lua", as = "nvim-tree"} -- Directory Tree
	use { "lukas-reineke/indent-blankline.nvim" } -- Indent 
	use "nvim-tree/nvim-web-devicons" -- nvim-tree icons
	use { "ms-jpq/coq_nvim", branch = "coq" }
	use {
		"williamboman/mason.nvim",
		"williamboman/mason-lspconfig.nvim",
		"neovim/nvim-lspconfig"
	}
	-- Telescope
	use {
		'nvim-telescope/telescope.nvim', tag = '0.1.6',
		requires = { {'nvim-lua/plenary.nvim'} }
	}
	-- Instalar y cargar el plugin de Treesitter
  	use {
		'nvim-treesitter/nvim-treesitter',
		run = function()
			local ts_update = require('nvim-treesitter.install').update({ with_sync = true })
            		ts_update()
        	end,

	}
	-- Habilitar Treesitter en todos los archivos admitidos
	require'nvim-treesitter.configs'.setup {
		ensure_installed = { "lua", "javascript", "python", "sql", "html", "css", "typescript" },
		auto_install = true,
		highlight = {
			enable = true,
    		},
  	}
	-- Packer
	if PACKER_BOOTSTRAP then
		require("packer").sync()
	end

end
)
