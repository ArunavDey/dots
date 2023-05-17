---------------------------------
---------- Auto commands --------
---------------------------------
local vim = vim
vim.cmd.colorscheme("gruvbox")
vim.diagnostic.open_float()

-- vim.api.nvim_set_hl(0, "Normal", { bg = "none" })
-- vim.api.nvim_set_hl(0, "NormalFloat", { bg = "none" })

-- vim.cmd([[ autocmd BufWritePre <buffer> lua vim.lsp.buf.format()]])
