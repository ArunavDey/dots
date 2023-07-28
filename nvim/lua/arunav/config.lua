local vim = vim

vim.cmd.colorscheme("rose-pine")
vim.diagnostic.open_float()

local treesitter = require("nvim-treesitter.configs")
treesitter.setup({
	sync_install = true,
	auto_install = true,
	highlight = {
		enable = true,
	},
})

local lsp = require("lsp-zero")
lsp.preset("recommended")
lsp.setup()
lsp.ensure_installed({ "tsserver", "eslint", "pyright" })

local autopairs = require("nvim-autopairs")
autopairs.setup()

local chadtree_settings = {
	theme = {
		icon_colour_set = "none",
	},
}

vim.api.nvim_set_var("chadtree_settings", chadtree_settings)
