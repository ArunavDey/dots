-------------------------------------------------
---------- Configs for different plugins --------
-------------------------------------------------
local vim = vim

---------- Treesitter setup --------
require("nvim-treesitter.configs").setup({
    ensure_installed = {"help", "c", "css", "html", "javascript", "scss", "yaml", "bash", "lua", "python", "typescript"},
    sync_install = true,
    auto_install = true,
    highlight = {
        enable = true,
        additional_vim_regex_highlighting = true
    }
})

---------- LSP Setup --------
local lsp = require("lsp-zero")

lsp.preset("recommended")
lsp.setup()
lsp.ensure_installed({"tsserver", "eslint", "pyright"})

---------- Autopairs setup --------
require("nvim-autopairs").setup()

---------- Lualine --------
require("lualine").setup()

---------- Bufferline --------
require("bufferline").setup()

---------- CHADTree ----------
local chadtree = {
    theme = {
        icon_glyph_set = "devicons",
        icon_colour_set = "none"
    }
}

vim.api.nvim_set_var("chadtree_settings", chadtree)
