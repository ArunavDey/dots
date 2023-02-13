---------------------------------
---------- Auto commands --------
---------------------------------
local vim = vim
vim.cmd.colorscheme("gruvbox")

vim.api.nvim_set_hl(0, "Normal", { bg = "none" })
vim.api.nvim_set_hl(0, "NormalFloat", { bg = "none" })

vim.cmd([[ autocmd BufWritePre <buffer> lua vim.lsp.buf.format()]])
