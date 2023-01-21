--------------------------------------
---------- Remapping Keybinds --------
--------------------------------------
local vim = vim

-- Neoformat keybind
vim.keymap.set("n", "<leader>nf", vim.cmd.Neoformat)

-- Splitting keybinds
vim.keymap.set("n", "<leader>vs", vim.cmd.vsplit)
vim.keymap.set("n", "<leader>s", vim.cmd.split)

-- Telescope keybinds
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

-- Fugitive keybinds
vim.keymap.set("n", "<leader>gs", vim.cmd.Git)

-- Undotree keybinds
vim.keymap.set("n", "<leader>u", vim.cmd.UndotreeToggle)

-- Bufferlin keybinds
vim.keymap.set("n", "<leader>bb", vim.cmd.BufferLinePick)
vim.keymap.set("n", "<leader>bn", vim.cmd.BufferLineCyclePrev)
vim.keymap.set("n", "<leader>bN", vim.cmd.BufferLineCycleNext)
vim.keymap.set("n", "<leader>bc", vim.cmd.BufferLinePickClose)
