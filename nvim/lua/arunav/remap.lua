--------------------------------------
---------- Remapping Keybinds --------
--------------------------------------
local vim = vim

-- disable highlights
vim.keymap.set("n", "<leader>nh", vim.cmd.noh)

-- chadtree
vim.keymap.set("n", "<leader>nn", vim.cmd.CHADopen)

-- format document
vim.keymap.set("n", "<leader>nf", vim.cmd.Neoformat)

-- split
vim.keymap.set("n", "<leader>sv", vim.cmd.vsplit)
vim.keymap.set("n", "<leader>sh", vim.cmd.split)

-- telescope
local telescope_builtin = require("telescope.builtin")
vim.keymap.set("n", "<leader>ff", telescope_builtin.find_files, { noremap = true })
vim.keymap.set("n", "<leader>fg", telescope_builtin.live_grep, { noremap = true })
vim.keymap.set("n", "<leader>fh", telescope_builtin.help_tags, { noremap = true })
vim.keymap.set(
	"n",
	"<leader>fb",
	"<cmd>lua require 'telescope'.extensions.file_browser.file_browser()<CR>",
	{ noremap = true }
)

-- git
vim.keymap.set("n", "<leader>gs", vim.cmd.Git)

-- undotree
vim.keymap.set("n", "<leader>uu", vim.cmd.UndotreeToggle)

-- git blame
vim.keymap.set("n", "<leader>gb", vim.cmd.BlamerToggle)

-- floating diagnostics
vim.keymap.set("n", "<leader>dd", vim.diagnostic.open_float, { noremap = true })
vim.keymap.set("n", "<leader>d[", vim.diagnostic.goto_prev, { noremap = true })
vim.keymap.set("n", "<leader>d]", vim.diagnostic.goto_next, { noremap = true })

-- buffer
vim.keymap.set("n", "<leader>b[", vim.cmd.bnext)
vim.keymap.set("n", "<leader>b]", vim.cmd.bprev)
vim.keymap.set("n", "<leader>bd", vim.cmd.bdelete)
