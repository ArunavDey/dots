local vim = vim
local telescope = require("telescope")
local telescope_builtin = require("telescope.builtin")

vim.keymap.set("n", "<leader>u", vim.cmd.UndotreeToggle)
vim.keymap.set("n", "<leader>t", vim.cmd.TagbarToggle)
vim.keymap.set("n", "<leader>c", vim.cmd.Neoformat)
vim.keymap.set("n", "<leader>fb", telescope_builtin.buffers)
vim.keymap.set("n", "<leader>fp", telescope_builtin.find_files)
vim.keymap.set("n", "<leader>ff", telescope_builtin.live_grep)
vim.keymap.set("n", "<leader>fo", telescope.extensions.project.project)

vim.api.nvim_set_keymap("n", "<leader>x", [[<cmd>lua require'rest-nvim'.run()<cr>]], { noremap = true, silent = true })
