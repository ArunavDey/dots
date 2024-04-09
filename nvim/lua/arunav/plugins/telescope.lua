return {
	"nvim-telescope/telescope.nvim",
	dependencies = {
		{ "nvim-tree/nvim-web-devicons" }, -- file icons
		{ "nvim-lua/plenary.nvim" }, -- collection of prewritten lua modules
		{ "BurntSushi/ripgrep" }, -- recursive searching inside directories
		{ "nvim-telescope/telescope-fzf-native.nvim", build = "make" }, -- fuzzy finding
	},
	config = function()
		local telescope = require("telescope")
		telescope.setup({ defaults = { layout_strategy = "current_buffer" } })
		telescope.load_extension("fzf")
	end,
}
