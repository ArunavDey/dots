return {
	{ "tpope/vim-fugitive" }, -- git helper
	{ "tpope/vim-rhubarb" }, -- upstream git helper
	{
		"lewis6991/gitsigns.nvim", -- git diff symbols
		config = function()
			require("gitsigns").setup()
		end,
	},
}
