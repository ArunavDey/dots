local vim = vim
local telescope = require("telescope")
local telescope_builtin = require("telescope.builtin")
local opts = { noremap = true, silent = true }

vim.keymap.set("n", "<leader>u", vim.cmd.UndotreeToggle, opts)
vim.keymap.set("n", "<leader>t", vim.cmd.TagbarToggle, opts)
vim.keymap.set("n", "<leader>c", vim.cmd.Neoformat, opts)
vim.keymap.set("n", "<leader>fb", telescope_builtin.buffers, opts)
vim.keymap.set("n", "<leader>fp", telescope_builtin.find_files, opts)
vim.keymap.set("n", "<leader>ff", telescope_builtin.live_grep, opts)

vim.api.nvim_set_keymap("n", "<leader>x", [[<cmd>lua require'rest-nvim'.run()<cr>]], opts)
vim.api.nvim_set_keymap("n", "<leader>fb", 'y<ESC>:Telescope buffers default_text=<c-r>0<CR>', opts)
vim.api.nvim_set_keymap("n", "<leader>fp", 'y<ESC>:Telescope find_files default_text=<c-r>0<CR>', opts)
vim.api.nvim_set_keymap("n", "<leader>ff", 'y<ESC>:Telescope live_grep default_text=<c-r>0<CR>', opts)
