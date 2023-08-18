local vim = vim
local g = vim.g
local o = vim.opt

o.showcmd = true
o.wildmenu = true
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
o.updatetime = 100
o.laststatus = 3
g.mapleader = ' ';
g.neoformat_basic_format_align = 1
g.neoformat_basic_format_retab = 1
g.neoformat_basic_format_trim = 1
g.rainbow_active = 1
g.python3_host_prog = "python"
g.loaded_perl_provider = 0
g.loaded_ruby_provider = 0
g.gitgutter_terminal_reports_focus = 0
