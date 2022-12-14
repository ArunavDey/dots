local keymap = vim.api.nvim_set_keymap
keymap("n", "<A-Up>", ":wincmd k<CR>", { silent = true })
keymap("n", "<A-Right>", ":wincmd l<CR>", { silent = true })
keymap("n", "<A-Down>", ":wincmd j<CR>", { silent = true })
keymap("n", "<A-Left>", ":wincmd h<CR>", { silent = true })

local opts = { noremap = true, silent = true }
keymap("n", "<space>", "za", opts)
keymap("n", "<C-n>", ":NERDTreeToggle", opts)
keymap("n", "<C-Left>", ":tabprevious<CR>", opts)
keymap("n", "<C-Right>", ":tabnext<CR>", opts)
