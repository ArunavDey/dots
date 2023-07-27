--------------------------------------------------
---------- Plugins and Package Management --------
--------------------------------------------------
local vim = vim
vim.cmd([[packadd packer.nvim]])

return require("packer").startup(function(use)
	---------- Packer --------
	use("wbthomason/packer.nvim")

	---------- Colorschemes --------
	use("morhetz/gruvbox")
	use("rose-pine/neovim")

	---------- Fuzzy Finder --------
	-- Telescope
	use({
		"nvim-telescope/telescope.nvim",
		tag = "0.1.0",
		requires = {
			-- a few pre-witten Lua functions
			{ "nvim-lua/plenary.nvim" },
			-- for grepping through multiple files and folders
			{ "BurntSushi/ripgrep" },
			-- improves sorting performance in the FF
			{ "nvim-telescope/telescope-fzf-native.nvim", run = "make" },
			-- adds a file browser on top of telescope
			{ "nvim-telescope/telescope-file-browser.nvim" },
			-- icons for different file types
			{ "nvim-tree/nvim-web-devicons" },
		},
	})

	---------- Code Parsing --------
	-- better syntax highlighting
	use("nvim-treesitter/nvim-treesitter")

	-- LSP, autocompletion and snippets
	use({
		"VonHeikemen/lsp-zero.nvim",
		requires = {
			-- LSP support
			{ "neovim/nvim-lspconfig" },

			-- for installing LSPs, linters, etc.
			{ "williamboman/mason.nvim" },
			{ "williamboman/mason-lspconfig.nvim" },

			-- autocompletion
			{ "hrsh7th/nvim-cmp" },
			{ "hrsh7th/cmp-buffer" },
			{ "hrsh7th/cmp-path" },
			{ "saadparwaiz1/cmp_luasnip" },
			{ "hrsh7th/cmp-nvim-lsp" },
			{ "hrsh7th/cmp-nvim-lua" },

			-- snippets
			{ "L3MON4D3/LuaSnip" },
			{ "rafamadriz/friendly-snippets" },
		},
	})

	---------- File Browser --------
	use("ms-jpq/chadtree")

	---------- Status Line ----------
	use("nvim-lualine/lualine.nvim")

	---------- Miscellaneous --------
	-- comments support
	use("tpope/vim-commentary")

	-- surround code with brackets, tags, etc.
	use("tpope/vim-surround")

	-- git wrapper
	use("tpope/vim-fugitive")
	use("apzelos/blamer.nvim")
	use("airblade/vim-gitgutter")

	-- Brackets, quotes, etc. completion
	use("windwp/nvim-autopairs")

	-- errors and warnings
	use({
		"folke/trouble.nvim",
		requires = "nvim-tree/nvim-web-devicons",
	})

	-- undo tree
	use("mbbill/undotree")

	-- code formatting
	use("sbdchd/neoformat")

	-- colour coded parentheses
	use("luochen1990/rainbow")
end)
