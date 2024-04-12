return {
	{ "tpope/vim-fugitive" }, -- git helper
	{ "tpope/vim-rhubarb" }, -- upstream git helper
	{
		"lewis6991/gitsigns.nvim", -- git diff symbols
		config = function()
			require("gitsigns").setup({
				numhl = true,
				current_line_blame = true,
				current_line_blame_opts = {
					delay = 0,
				},
				current_line_blame_formatter_opts = {
					relative_time = true,
				},
			})
		end,
	},
}
