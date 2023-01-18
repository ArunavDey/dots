---------- Treesitter setup --------
require("nvim-treesitter.configs").setup({
	ensure_installed = {
		"help",
		"c",
		"css",
		"html",
		"javascript",
		"lua",
		"python",
		"typescript",
	},
	sync_install = true,
	auto_install = true,

	highlight = {
		enable = true,
		additional_vim_regex_highlighting = false,
	},
})

local ft_to_parser = require("nvim-treesitter.parsers").filetype_to_parsername
ft_to_parser.ejs = "html"

---------- LSP Setup --------
local lsp = require("lsp-zero")

lsp.preset("recommended")
lsp.setup()
lsp.ensure_installed({
	"tsserver",
	"eslint",
	"sumneko_lua",
	"pyright",
})

---------- Autopairs setup --------
require("nvim-autopairs").setup()

---------- Lualine setup --------
require("lualine").setup()

---------- Smooth Scrolling --------
-- require("neoscroll").setup()

---------- Minimap --------
local codewindow = require("codewindow")
codewindow.setup({
	active_in_terminals = false, -- Should the minimap activate for terminal buffers
	auto_enable = false, -- Automatically open the minimap when entering a (non-excluded) buffer (accepts a table of filetypes)
	exclude_filetypes = {}, -- Choose certain filetypes to not show minimap on
	max_minimap_height = nil, -- The maximum height the minimap can take (including borders)
	max_lines = nil, -- If auto_enable is true, don't open the minimap for buffers which have more than this many lines.
	minimap_width = 20, -- The width of the text part of the minimap
	use_lsp = true, -- Use the builtin LSP to show errors and warnings
	use_treesitter = true, -- Use nvim-treesitter to highlight the code
	use_git = true, -- Show small dots to indicate git additions and deletions
	width_multiplier = 4, -- How many characters one dot represents
	z_index = 1, -- The z-index the floating window will be on
	show_cursor = true, -- Show the cursor position in the minimap
	window_border = "single", -- The border style of the floating window (accepts all usual options)
})
codewindow.apply_default_keybinds()
