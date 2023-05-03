--------------------------------------------------
---------- Plugins and Package Management --------
--------------------------------------------------
local vim = vim
vim.cmd([[packadd packer.nvim]])

return require("packer").startup(function(use)
	---------- Packer --------
	use("wbthomason/packer.nvim")

	---------- Colorschemes --------
	-- * with treesitter support
	use("morhetz/gruvbox")
	use("luisiacc/gruvbox-baby")
	use("sainnhe/gruvbox-material")
	use("rebelot/kanagawa.nvim")
	use("sainnhe/sonokai")
	use("folke/tokyonight.nvim")
	use("glepnir/zephyr-nvim")

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
			{
				"nvim-tree/nvim-web-devicons",
			},
		},
	})

	---------- Code Parsing --------
	-- better syntax highlighting
	use("nvim-treesitter/nvim-treesitter", { run = ":TSUpdate" })

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
	-- use("preservim/nerdtree")
	use("ms-jpq/chadtree")

	---------- Miscellaneous --------
	-- comments support
	use("tpope/vim-commentary")

	-- surround code with brackets, tags, etc.
	use("tpope/vim-surround")

	-- git wrapper
	use("tpope/vim-fugitive")

	-- Brackets, quotes, etc. completion
	use({
		"windwp/nvim-autopairs",
	})

	-- undo tree
	use("mbbill/undotree")

	-- code formatting
	use("sbdchd/neoformat")

	-- colour coded parentheses
	use("luochen1990/rainbow")

	-- git blame
	use("apzelos/blamer.nvim")

  -- transparency
  use("xiyaowong/transparent.nvim")
end)
