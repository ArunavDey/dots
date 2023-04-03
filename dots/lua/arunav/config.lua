-------------------------------------------------
---------- Configs for different plugins --------
-------------------------------------------------

---------- Treesitter setup --------
require("nvim-treesitter.configs").setup({
  ensure_installed = {
    "help",
    "c",
    "css",
    "html",
    "javascript",
    "scss",
    "yaml",
    "bash",
    "lua",
    "python",
    "typescript",
  },
  sync_install = true,
  auto_install = true,

  highlight = {
    enable = true,
    additional_vim_regex_highlighting = true,
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
-- require("lualine").setup()

---------- Smooth Scrolling --------
-- require("neoscroll").setup()

---------- Minimap --------
-- local codewindow = require("codewindow")
-- codewindow.setup()
-- codewindow.apply_default_keybinds()

---------- Bufferline Setup --------
-- require("bufferline").setup()
