-----------------------------------------------
---------- General Settings for Neovim --------
-----------------------------------------------
local vim = vim
local g = vim.g   -- let
local o = vim.opt -- set

-- General
o.showcmd = true            -- shows the command typed
o.wildmenu = true           -- menu for command completion
o.showmatch = true          -- briefly jump to matching bracket when inserted
o.incsearch = true          -- highlight match while typing
o.cursorline = true         -- highlights current line
o.title = true              -- let vim set the title of the window
o.background = "dark"       -- used for highlight color
o.number = true             -- shows lines numbers
o.clipboard = "unnamedplus" -- copy to clipboard, need xclip
o.termguicolors = true
o.path:append '**'

-- Folding
-- o.foldmethod = "indent" -- how to fold
-- o.foldexpr = "nvim_treesitter#foldexpr()"

-- Line Wrapping
o.wrap = true        -- enable wrapping long lines
o.breakindent = true -- indents wrapped line
o.linebreak = true   -- wrap long lines at a blank

-- Indentation
o.autoindent = true  -- automatically indents
o.smartindent = true -- smart indentation
o.tabstop = 2        -- number of spaces tab uses in a file
o.shiftwidth = 2     -- number of spaces for autoindent
o.softtabstop = 2    -- number of spaces that tab uses while editting
o.expandtab = true   -- convert tabs to spaces
o.shiftround = false -- round indents to multiples of shiftwidth

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


-- Minimap
-- g.minimap_width = 8
-- g.minimap_auto_start = 1
-- g.minimap_base_highlight = "Normal"
-- g.minimap_git_colors = 1

-- g.chadtree_settings.theme.icon_glyph_set = "devicons"
