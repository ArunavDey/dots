vim.cmd([[packadd packer.nvim]])

return require("packer").startup(function(use)
	use("wbthomason/packer.nvim")

	use({
		"nvim-telescope/telescope.nvim",
		tag = "0.1.0",
		requires = { { "nvim-lua/plenary.nvim" } },
	})

  -- Colorschemes
	use("ellisonleao/gruvbox.nvim")
	use("catppuccin/nvim", { as = "catppuccin" })

  -- Treesitter code parsing
	use("nvim-treesitter/nvim-treesitter", { run = ":TSUpdate" })
	use("nvim-treesitter/playground")
	use({
		"windwp/nvim-autopairs",
		config = function()
			require("nvim-autopairs").setup({})
		end,
	})

  -- Undo tree
	use("mbbill/undotree")
  
  -- Git wrapper
	use("tpope/vim-fugitive")

  -- LSP and shit
	use({
		"VonHeikemen/lsp-zero.nvim",
		requires = {
			-- LSP Support
			{ "neovim/nvim-lspconfig" },
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

  -- Lualine for the bottom bar
	use({
		"nvim-lualine/lualine.nvim",
		requires = { "kyazdani42/nvim-web-devicons", opt = true },
	})

  -- Comments
	use("tpope/vim-commentary")

  -- Bracket completion
	use("tpope/vim-surround")

  -- Code formatting
	use("sbdchd/neoformat")

  -- Rainbow parentheses
	use("luochen1990/rainbow")

  -- Discord presence
  use("andweeb/presence.nvim")

  -- Dev icons
	use("ryanoasis/vim-devicons")
end)
