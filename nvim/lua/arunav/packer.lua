local vim = vim
local packer = require("packer");

vim.cmd([[packadd packer.nvim]])

return packer.startup(function(use)
	use("wbthomason/packer.nvim")
	use("rose-pine/neovim")
	use("nvim-treesitter/nvim-treesitter")
	use("tpope/vim-commentary")
	use("tpope/vim-surround")
	use("tpope/vim-fugitive")
	use("airblade/vim-gitgutter")
	use("windwp/nvim-autopairs")
	use("mbbill/undotree")
	use("sbdchd/neoformat")
	use("luochen1990/rainbow")
	use("ms-jpq/chadtree")
	use("nvim-tree/nvim-web-devicons")
	use("folke/trouble.nvim")
	use({
		"nvim-telescope/telescope.nvim",
		requires = {
			{ "nvim-lua/plenary.nvim" },
			{ "BurntSushi/ripgrep" },
			{ "nvim-telescope/telescope-fzf-native.nvim", run = "make" },
		},
	})
	use({
		"VonHeikemen/lsp-zero.nvim",
		requires = {
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
	})
end)
