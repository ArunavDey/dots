vim.cmd([[packadd packer.nvim]])

return require("packer").startup(function(use)
	-- Packer
	use("wbthomason/packer.nvim")

	-- Colorschemes
	use("ellisonleao/gruvbox.nvim")
	use("catppuccin/nvim", { as = "catppuccin" })

	-- Fuzzy finder
	use({
		"nvim-telescope/telescope.nvim",
		tag = "0.1.0",
		-- A few pre-witten Lua functions
		requires = {
			{ "nvim-lua/plenary.nvim" },
			{ "BurntSushi/ripgrep" },
		},
	})

	-- Treesitter code parsing
	use("nvim-treesitter/nvim-treesitter", { run = ":TSUpdate" })

	-- Show treesitter parse tree [:TSPlaygroundToggle]
	-- use("nvim-treesitter/playground")

	-- LSP, autocompletion and snippets
	use({
		"VonHeikemen/lsp-zero.nvim",
		requires = {
			-- LSP Support
			{ "neovim/nvim-lspconfig" },

			-- Useful for installing LSP, Linters, etc.
			{ "williamboman/mason.nvim" },
			{ "williamboman/mason-lspconfig.nvim" },

			-- Autocompletion
			{ "hrsh7th/nvim-cmp" },
			{ "hrsh7th/cmp-buffer" },
			{ "hrsh7th/cmp-path" },
			{ "saadparwaiz1/cmp_luasnip" },
			{ "hrsh7th/cmp-nvim-lsp" },
			{ "hrsh7th/cmp-nvim-lua" },

			-- Snippets
			{ "L3MON4D3/LuaSnip" },
			{ "rafamadriz/friendly-snippets" },
		},
	})

	-- NERD Tree, file browsing
	use("preservim/nerdtree")

	-- Lualine bottom bar
	use({
		"nvim-lualine/lualine.nvim",
	})

	-- Undo tree
	use("mbbill/undotree")

	-- Git wrapper
	use("tpope/vim-fugitive")

	-- Comments
	use("tpope/vim-commentary")

	-- Bracket completion
	use("tpope/vim-surround")

	-- Code formatting
	use("sbdchd/neoformat")

	-- Colour coded parentheses
	use("luochen1990/rainbow")

	-- Discord presence
	use("andweeb/presence.nvim")

	-- Dev icons
	use("ryanoasis/vim-devicons")
end)
