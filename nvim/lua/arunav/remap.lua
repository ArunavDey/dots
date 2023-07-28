local vim = vim

vim.keymap.set("n", "<leader>e", vim.cmd.CHADopen)
local telescope_builtin = require("telescope.builtin")
vim.keymap.set("n", "<leader>ff", telescope_builtin.find_files, { noremap = true })
vim.keymap.set("n", "<leader>fg", telescope_builtin.live_grep, { noremap = true })
vim.keymap.set("n", "<leader>fh", telescope_builtin.help_tags, { noremap = true })
vim.keymap.set("n", "<leader>fb", "<cmd>lua require 'telescope'.extensions.file_browser.file_browser()<CR>", { noremap = true })
vim.keymap.set("n", "<leader>gs", telescope_builtin.git_status, { noremap = true })
vim.keymap.set("n", "<leader>gc", telescope_builtin.git_commits, { noremap = true })
vim.keymap.set("n", "<leader>gz", telescope_builtin.git_stash, { noremap = true })
vim.keymap.set("n", "<leader>gb", vim.cmd.BlamerToggle)
vim.keymap.set("n", "<leader>gg", vim.cmd.GitGutterLineHighlightsToggle)
vim.keymap.set("n", "<leader>tt", vim.cmd.TroubleToggle)
