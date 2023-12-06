local vim = vim
local lazypath = vim.fn.stdpath("data") .. "/lazy/lazy.nvim"
if not vim.loop.fs_stat(lazypath) then
	vim.fn.system({
		"git",
		"clone",
		"--filter=blob:none",
		"https://github.com/folke/lazy.nvim.git",
		"--branch=stable", -- latest stable release
		lazypath,
	})
end
vim.opt.rtp:prepend(lazypath)

require("lazy").setup({
	"catppuccin/nvim",
	"nvim-treesitter/nvim-treesitter",
	"tpope/vim-commentary",
	"tpope/vim-surround",
	"tpope/vim-fugitive",
	"tpope/vim-rhubarb",
	"windwp/nvim-autopairs",
	"mbbill/undotree",
	"sbdchd/neoformat",
	"nvim-tree/nvim-web-devicons",
	"folke/trouble.nvim",
	"folke/which-key.nvim",
	"airblade/vim-gitgutter",
	"preservim/tagbar",
	"rest-nvim/rest.nvim",
	{
		"VonHeikemen/lsp-zero.nvim",
		branch = "v3.x",
		dependencies = {
			"neovim/nvim-lspconfig",
			"hrsh7th/cmp-nvim-lsp",
			"hrsh7th/nvim-cmp",
			"L3MON4D3/LuaSnip",
			"folke/neodev.nvim",
			"williamboman/mason.nvim",
			"williamboman/mason-lspconfig.nvim"
		},
	},
	{
		"nvim-telescope/telescope.nvim",
		dependencies = {
			{ "nvim-lua/plenary.nvim" },
			{ "BurntSushi/ripgrep" },
			{ "nvim-telescope/telescope-fzf-native.nvim", build = "make" },
			{ "nvim-telescope/telescope-project.nvim" },
			{ "nvim-telescope/telescope-file-browser.nvim" },
		},
	},
})
