local vim = vim
local lazypath = vim.fn.stdpath("data") .. "/lazy/lazy.nvim"
if not vim.loop.fs_stat(lazypath) then
    vim.fn.system({
        "git", "clone", "--filter=blob:none",
        "https://github.com/folke/lazy.nvim.git", "--branch=stable", -- latest stable release
        lazypath
    })
end
vim.opt.rtp:prepend(lazypath)

require("lazy").setup({
    {"catppuccin/nvim"}, -- catppuccin colorscheme
    {"tanvirtin/monokai.nvim"}, -- monokai colorscheme
    {"nvim-treesitter/nvim-treesitter"}, -- better syntax highlighting
    {"tpope/vim-commentary"}, -- comment code
    {"tpope/vim-surround"}, -- surround code
    {"tpope/vim-fugitive"}, -- git helper
    {"tpope/vim-rhubarb"}, -- another git helper
    {"tpope/vim-vinegar"}, -- netrw enhancer
    {"windwp/nvim-autopairs"}, -- autocomplete braces and tags
    {"mbbill/undotree"}, -- browse file history
    {"folke/which-key.nvim"}, -- show keybind helper
    {"preservim/tagbar"}, -- browse tags of the current file
    {"lewis6991/gitsigns.nvim"}, -- git diff symbols
    {"xiyaowong/transparent.nvim"}, -- transparent background
    {
        "nvim-lualine/lualine.nvim", -- status bar
        dependencies = {"nvim-tree/nvim-web-devicons"}
    }, {
        "VonHeikemen/lsp-zero.nvim",
        branch = "v3.x",
        dependencies = {
            {"neovim/nvim-lspconfig"}, -- config files for nvim lsp client
            {"hrsh7th/nvim-cmp"}, -- completion
            {"hrsh7th/cmp-nvim-lsp"}, -- nvim-cmp source
            {"L3MON4D3/LuaSnip"}, -- code snippets
            {"williamboman/mason.nvim"}, -- ui for installing LSPs
            {"williamboman/mason-lspconfig.nvim"}, -- helper for Mason
            {"folke/trouble.nvim"}, -- show errors and warnings
            {"sbdchd/neoformat"} -- code formatting
        }
    }, {
        "nvim-telescope/telescope.nvim",
        dependencies = {
            {"nvim-tree/nvim-web-devicons"}, -- file icons
            {"nvim-lua/plenary.nvim"}, -- collection of prewritten lua modules
            {"BurntSushi/ripgrep"}, -- recursive searching inside directories
            {"nvim-telescope/telescope-fzf-native.nvim", build = "make"} -- fuzzy finding
        }
    }
})

