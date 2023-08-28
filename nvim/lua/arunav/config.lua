local vim = vim
local treesitter = require("nvim-treesitter.configs")
local lsp = require("lsp-zero")
local autopairs = require("nvim-autopairs")
local vgit = require("vgit")
local chadtree_settings = {
	theme = {
		icon_colour_set = "none",
	},
}

vim.diagnostic.open_float()
treesitter.setup({
	sync_install = true,
	highlight = {
		enable = true,
	},
})

lsp.preset("recommended")
lsp.setup()

autopairs.setup()

vgit.setup()

vim.api.nvim_set_var("chadtree_settings", chadtree_settings)
vim.cmd.colorscheme("catppuccin-macchiato")
vim.diagnostic.open_float()
