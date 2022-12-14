vim.o.showcmd = true -- shows the command typed
vim.o.wildmenu = true -- menu for command completion
vim.o.showmatch = true -- briefly jump to matching bracket when inserted
vim.o.incsearch = true -- highlight mathch while typing
vim.o.foldlevelstart = 5 -- when to fold
vim.o.foldmethod = "indent" -- how to fold
vim.o.wrap = true -- enable wrapping long lines
vim.o.title = true -- let vim set the title of the window
vim.o.background = "dark" -- used highlight color
vim.o.shiftround = false -- round indents to multiples of shiftwidth

-- ##### Window Options #####
vim.wo.number = true -- shows lines numbers
vim.wo.cursorline = true -- highlights current line
vim.wo.cursorcolumn = true -- highlights current column
vim.wo.foldenable = true -- enables folding lines
vim.wo.breakindent = true -- indents wrapped line
vim.wo.linebreak = true -- wrap long lines at a blank

-- ##### Buffer Options #####
vim.bo.autoindent = true
vim.opt_local.tabstop = 2 -- number of spaces tab uses in a file
vim.opt_local.shiftwidth = 2 -- number of spaces for autoindent
vim.opt_local.softtabstop = 2 -- number of spaces that tab uses while editting
vim.bo.expandtab = true -- convert tabs to spaces
