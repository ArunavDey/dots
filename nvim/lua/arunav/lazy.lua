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
	"windwp/nvim-autopairs",
	"mbbill/undotree",
	"sbdchd/neoformat",
	"nvim-tree/nvim-web-devicons",
	"folke/trouble.nvim",
	"folke/which-key.nvim",
	"airblade/vim-gitgutter",
	"junegunn/fzf.vim",
	"junegunn/fzf",
	"preservim/tagbar",
	{
		"nvim-neo-tree/neo-tree.nvim",
		dependencies = {
			"MunifTanjim/nui.nvim",
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
	{
		"VonHeikemen/lsp-zero.nvim",
		dependencies = {
			{ "neovim/nvim-lspconfig" },
			{ "williamboman/mason.nvim" },
			{ "williamboman/mason-lspconfig.nvim" },
			{ "hrsh7th/nvim-cmp" },
			{ "hrsh7th/cmp-buffer" },
			{ "hrsh7th/cmp-path" },
			{ "saadparwaiz1/cmp_luasnip" },
			{ "hrsh7th/cmp-nvim-lsp" },
			{ "hrsh7th/cmp-nvim-lua" },
			{ "L3MON4D3/LuaSnip" },
			{ "rafamadriz/friendly-snippets" },
		},
	},
})
