vim.cmd([[packadd packer.nvim]])

return require("packer").startup(function(use)
	-- Packer
	use("wbthomason/packer.nvim")

	-- Colorschemes (all support treesitter)
	use("ellisonleao/gruvbox.nvim")
  use("sainnhe/gruvbox-material")
  use("rebelot/kanagawa.nvim")
  use("sainnhe/sonokai")
  use("folke/tokyonight.nvim")
  use("glepnir/zephyr-nvim")
  vim.cmd.colorscheme("gruvbox")

	-- Telescope
	use({
		"nvim-telescope/telescope.nvim",
		tag = "0.1.0",
		-- A few pre-witten Lua functions
		requires = {
			{ "nvim-lua/plenary.nvim" },
			{ "BurntSushi/ripgrep" },
			{ "nvim-telescope/telescope-fzf-native.nvim", run = "make" },
			{ "nvim-telescope/telescope-file-browser.nvim" },
			{
				"nvim-tree/nvim-web-devicons",
			},
		},
	})

	-- Treesitter code parsing
	use("nvim-treesitter/nvim-treesitter", { run = ":TSUpdate" })

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

	-- Undo tree
	use("mbbill/undotree")

	-- Git wrapper
	use("tpope/vim-fugitive")

	-- Comments
	use("tpope/vim-commentary")

	-- Surround code with brackets, tags, etc.
	use("tpope/vim-surround")

	-- Code formatting
	use("sbdchd/neoformat")

	-- Colour coded parentheses
	use("luochen1990/rainbow")

	-- Discord presence
	use("andweeb/presence.nvim")

	-- Brackets, quotes, etc. completion
	use({
		"windwp/nvim-autopairs",
	})

	-- Status line
	use({
		"nvim-lualine/lualine.nvim",
		requires = { "nvim-tree/nvim-web-devicons", opt = true },
	})

  -- Smooth scrolling
  -- use("karb94/neoscroll.nvim")

  -- Minimap
  use("gorbit99/codewindow.nvim")
end)
