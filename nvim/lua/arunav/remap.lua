local vim = vim
local telescope_builtin = require("telescope.builtin")

-- vim.keymap.set("n", "<leader>e", vim.cmd.Ex)
vim.keymap.set("n", "<leader>g", vim.cmd.Git)
vim.keymap.set("n", "<leader>t", vim.cmd.TroubleToggle)
vim.keymap.set("n", "<leader>u", vim.cmd.UndotreeToggle)
vim.keymap.set("n", "<leader>p", telescope_builtin.find_files)
vim.keymap.set("n", "<leader>f", telescope_builtin.live_grep)
vim.keymap.set("n", "<leader>j", telescope_builtin.buffers)
