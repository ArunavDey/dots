local vim = vim
local telescope_builtin = require("telescope.builtin")
local opts = { noremap = true, silent = true }

vim.keymap.set("n", "<leader>e", vim.cmd.NvimTreeToggle, opts)
vim.keymap.set("n", "<leader>u", vim.cmd.UndotreeToggle, opts)
vim.keymap.set("n", "<leader>t", vim.cmd.TagbarToggle, opts)
vim.keymap.set("n", "<leader>c", function()
  print("Formatting current buffer")
  -- vim.lsp.buf.format({ async = false, timeout_ms = 5000 })
  require("conform").format()
end, opts)

vim.keymap.set("n", "<leader>[", vim.cmd.bN, opts)
vim.keymap.set("n", "<leader>]", vim.cmd.bn, opts)
vim.keymap.set("n", "<leader>fd", vim.cmd.TroubleToggle, opts)
vim.keymap.set("n", "<leader>fb", telescope_builtin.buffers, opts)
vim.keymap.set("n", "<leader>fp", telescope_builtin.find_files, opts)
vim.keymap.set("n", "<leader>ff", telescope_builtin.live_grep, opts)
vim.keymap.set("v", "J", ":m '>+1<CR>gv=gv")
vim.keymap.set("v", "K", ":m '<-2<CR>gv=gv")
