return {
	{ "catppuccin/nvim" }, -- catppuccin colorscheme
	{ "tanvirtin/monokai.nvim" }, -- monokai colorscheme
	{ "sainnhe/everforest" }, -- everforest colorscheme
	{ "sainnhe/gruvbox-material" }, -- gruvbox-material colorscheme
	{
		"xiyaowong/transparent.nvim",
		config = function()
			require("transparent").setup()
		end,
	}, -- transparent background
}
