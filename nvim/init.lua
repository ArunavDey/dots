require "user.options"
require "user.plugins"
require "user.keybinds"
require "user.lsp"

-- ##### Theme Settings #####
vim.cmd("colorscheme gruvbox")
vim.g.airline_powerline_fonts = 1
vim.g.airline_theme = "gruvbox"
vim.g.rainbow_active = 1

-- ##### Code Formatting #####
vim.g.neoformat_basic_format_align = 1
vim.g.neoformat_basic_format_retab = 1
vim.g.neoformat_basic_format_trim = 1

-- ##### Misc. #####
vim.g.python3_host_prog = "python"
vim.g.loaded_perl_provider = 0
vim.g.loaded_ruby_provider = 0
