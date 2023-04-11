---------------------------------
---------- Auto commands --------
---------------------------------
local vim = vim
vim.cmd.colorscheme("gruvbox")
-- vim.cmd.colorscheme("gruvbox-baby")
-- vim.cmd.colorscheme("gruvbox-material")
-- vim.cmd.colorscheme("kanagawa")
-- vim.cmd.colorscheme("sonokai")
-- vim.cmd.colorscheme("tokyonight")
-- vim.cmd.colorscheme("zephyr")

-- vim.api.nvim_set_hl(0, "Normal", { bg = "none" })
-- vim.api.nvim_set_hl(0, "NormalFloat", { bg = "none" })

vim.cmd([[ autocmd BufWritePre <buffer> lua vim.lsp.buf.format()]])
