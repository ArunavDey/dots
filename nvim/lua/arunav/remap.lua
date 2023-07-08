--------------------------------------
---------- Remapping Keybinds --------
--------------------------------------
local vim = vim

-- chadtree
vim.keymap.set("n", "<leader>e", vim.cmd.CHADopen)

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

-- git blame
vim.keymap.set("n", "<leader>bb", vim.cmd.BlamerToggle)

-- diagnostics
vim.keymap.set("n", "<leader>tt", vim.cmd.TroubleToggle)
