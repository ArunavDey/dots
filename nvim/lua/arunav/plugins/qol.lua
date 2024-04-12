return {
	{ "tpope/vim-commentary" }, -- better comments
	{ "tpope/vim-surround" }, -- surround code
	-- { "tpope/vim-vinegar" }, -- netrw enhancer
	{
		"stevearc/oil.nvim",
		config = function()
			require("oil").setup()
		end,
	}, -- better file browser
	{
		"windwp/nvim-autopairs",
		config = function()
			require("nvim-autopairs").setup()
		end,
	}, -- autocomplete braces and tags
	{
		"folke/which-key.nvim", -- show keybind helper
		config = function()
			local wk = require("which-key")

			wk.register({
				e = "File browser",
				u = "Undo tree",
				t = "Tags",
				d = "Trouble",
				c = "Format code",
				f = {
					name = "files",
					p = "Find file",
					f = "Find in files",
					b = "Open buffers",
				},
			}, { prefix = "<leader>" })
		end,
	},
	{
		"nvim-lualine/lualine.nvim", -- status bar
		dependencies = { "nvim-tree/nvim-web-devicons" },
		config = function()
			require("lualine").setup()
		end,
	},
	{ "mbbill/undotree" }, -- browse file history
	{ "preservim/tagbar" }, -- browse tags of the current file
}
