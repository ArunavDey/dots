return {
	{
		"nvim-treesitter/nvim-treesitter",
		enabled = true,
		config = function()
			require("nvim-treesitter.configs").setup({
				sync_install = true,
				highlight = { enable = true },
			})
		end,
	},
}
