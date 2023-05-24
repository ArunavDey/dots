-----------------------------------------------
---------- General Settings for Neovim --------
-----------------------------------------------
local vim = vim
local g = vim.g
local o = vim.opt

-- General
o.showcmd = true
o.wildmenu = true
o.showmatch = true
o.incsearch = true
o.cursorline = true
o.title = true
o.background = "dark"
o.number = true
o.clipboard = "unnamedplus"
o.termguicolors = true
o.path:append("**")
o.wrap = true
o.breakindent = true
o.linebreak = true
o.autoindent = true
o.smartindent = true
o.tabstop = 2
o.shiftwidth = 2
o.softtabstop = 2
o.expandtab = true
o.shiftround = false

-- Neoformat Defaults
g.neoformat_basic_format_align = 1
g.neoformat_basic_format_retab = 1
g.neoformat_basic_format_trim = 1

-- Rainbow Parentheses
g.rainbow_active = 1

-- Misc.
g.python3_host_prog = "python"
g.loaded_perl_provider = 0
g.loaded_ruby_provider = 0
g.NERDTreeShowLineNumbers = 1
g.blamer_enabled = 0
g.blamer_delay = 0
g.blamer_show_in_insert_modes = 0
g.blamer_show_in_visual_modes = 0
