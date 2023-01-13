local g = vim.g
local o = vim.opt

-- General
o.showcmd = true -- shows the command typed
o.wildmenu = true -- menu for command completion
o.showmatch = true -- briefly jump to matching bracket when inserted
o.incsearch = true -- highlight match while typing
o.cursorline = true -- highlights current line
o.title = true -- let vim set the title of the window
o.background = "dark" -- used for highlight color
o.number = true -- shows lines numbers
o.clipboard = "unnamedplus" -- copy to clipboard, need xclip

-- Folding
-- o.foldlevelstart = 16 -- when to fold
-- o.foldmethod = "indent" -- how to fold
-- o.foldenable = true -- enables folding lines

-- Line Wrapping
o.wrap = true -- enable wrapping long lines
o.breakindent = true -- indents wrapped line
o.linebreak = true -- wrap long lines at a blank

-- Indentation
o.autoindent = true -- automatically indents
o.smartindent = true -- smart indentation
o.tabstop = 2 -- number of spaces tab uses in a file
o.shiftwidth = 2 -- number of spaces for autoindent
o.softtabstop = 2 -- number of spaces that tab uses while editting
o.expandtab = true -- convert tabs to spaces
o.shiftround = false -- round indents to multiples of shiftwidth

-- Neoformat Defaults
g.neoformat_basic_format_align = 1
g.neoformat_basic_format_retab = 1
g.neoformat_basic_format_trim = 1

-- Rainbow Parentheses
g.rainbow_active = 1

-- NERD Tree Default Window Size
g.NERDTreeWinSize = 24

-- Misc.
g.python3_host_prog = "python"
g.loaded_perl_provider = 0
g.loaded_ruby_provider = 0
