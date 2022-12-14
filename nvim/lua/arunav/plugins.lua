local Plug = vim.fn["plug#"]

vim.call("plug#begin")

-- General Plugins
Plug("vim-airline/vim-airline")
Plug("vim-airline/vim-airline-themes")
Plug("preservim/nerdtree")
Plug("windwp/nvim-autopairs")
Plug("nvim-treesitter/nvim-treesitter")
Plug("luochen1990/rainbow")
Plug("tpope/vim-commentary")
Plug("ryanoasis/vim-devicons")
Plug("ap/vim-css-color")
Plug("neovim/nvim-lspconfig")
Plug("nvim-lua/plenary.nvim")
Plug("sbdchd/neoformat")
Plug("neoclide/coc.nvim")
Plug("mattn/emmet-vim")

-- Colourschemes
Plug("catppuccin/nvim", { as = "catppuccin" })
Plug("morhetz/gruvbox", { as = "gruvbox" })
Plug("andreasvc/vim-256noir", { as = "256noir" })

vim.call("plug#end")
