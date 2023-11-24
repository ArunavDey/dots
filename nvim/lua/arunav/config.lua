local vim = vim
local treesitter = require("nvim-treesitter.configs")
local lsp = require("lsp-zero")
local autopairs = require("nvim-autopairs")
local telescope = require("telescope")
local wk = require("which-key")
local mason = require("mason")
local mason_lspconfig = require("mason-lspconfig")
vim.diagnostic.open_float()
treesitter.setup({
	sync_install = true,
	highlight = {
		enable = true,
	},
})
autopairs.setup()
lsp.setup()
mason.setup()
mason_lspconfig.setup({
  handlers = {
    lsp.default_setup
  }
})
wk.register({
  e = "Neotree",
  u = "Undotree",
  t = "Tagbar",
  c = "Format code",
	f = {
		name = "files",
		p = "Find file",
		f = "Live grep",
		b = "Buffers",
		o = "Open projects",
	},
}, { prefix = "<leader>" })

vim.cmd.colorscheme("catppuccin-macchiato")

-- disables background colour
vim.cmd("highlight Normal guibg=none")
vim.cmd("highlight NonText guibg=none")
vim.cmd("highlight Normal ctermbg=none")
vim.cmd("highlight NonText ctermbg=none")

telescope.load_extension("file_browser")
telescope.load_extension("project")
