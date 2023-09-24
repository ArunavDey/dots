local vim = vim
local treesitter = require("nvim-treesitter.configs")
local lsp = require("lsp-zero")
local autopairs = require("nvim-autopairs")
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
vim.cmd.colorscheme("catppuccin-macchiato")
