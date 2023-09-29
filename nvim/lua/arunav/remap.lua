local vim = vim
local telescope_builtin = require("telescope.builtin")

vim.keymap.set("n", "<leader>e", vim.cmd.CHADopen)
vim.keymap.set("n", "<leader>u", vim.cmd.UndotreeToggle)
vim.keymap.set("n", "<C-p>", telescope_builtin.find_files)
vim.keymap.set("n", "<C-f>", telescope_builtin.live_grep)
vim.keymap.set("n", "<C-j>", telescope_builtin.buffers)
