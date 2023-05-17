--------------------------------------
---------- Remapping Keybinds --------
--------------------------------------
local vim = vim

-- vim.keymap.set("n", "<leader>sp", vim.opt.spell)

-- File browser keybind
vim.keymap.set("n", "<leader>nn", vim.cmd.CHADopen)

-- Neoformat keybind
vim.keymap.set("n", "<leader>nf", vim.cmd.Neoformat)

-- Splitting keybinds
vim.keymap.set("n", "<leader>vv", vim.cmd.vsplit)
vim.keymap.set("n", "<leader>ss", vim.cmd.split)

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
vim.keymap.set("n", "<leader>uu", vim.cmd.UndotreeToggle)

-- Blamer keybinds
vim.keymap.set("n", "<leader>gb", vim.cmd.BlamerToggle)

-- Transparency toggle
vim.keymap.set("n", "<leader>tt", vim.cmd.TransparentToggle)

vim.keymap.set("n", "<leader>dd", vim.diagnostic.open_float, { noremap = true })
vim.keymap.set("n", "<leader>d[", vim.diagnostic.goto_prev, { noremap = true })
vim.keymap.set("n", "<leader>d]", vim.diagnostic.goto_next, { noremap = true })
