local vim = vim
local g = vim.g
local o = vim.opt

o.wildmenu = true
o.incsearch = true
o.number = true
o.relativenumber = true
o.termguicolors = true
o.wrap = true
o.textwidth = 80
o.shiftwidth = 2
o.tabstop = 2
o.autoindent = true
o.smartindent = true
o.expandtab = true
o.list = true
g.mapleader = " "
g.netrw_keepdir = 0
g.netrw_banner = 0
g.laststatus = 2
g.transparent_groups = vim.list_extend(g.transparent_groups or {}, {
	"TelescopeResultsNormal",
	"TelescopePromptNormal",
	"TelescopePreviewNormal",
	"MasonNormal",
	"LazyNormal",
})
g.netrw_bufsettings = "noma nomod nu rnu nobl nowrap ro"

vim.cmd.colorscheme("catppuccin-macchiato")
