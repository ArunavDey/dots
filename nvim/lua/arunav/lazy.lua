local vim = vim
local lazypath = vim.fn.stdpath("data") .. "/lazy/lazy.nvim"
if not vim.loop.fs_stat(lazypath) then
  vim.fn.system({
    "git",
    "clone",
    "--filter=blob:none",
    "https://github.com/folke/lazy.nvim.git",
    "--branch=stable", -- latest stable release
    lazypath,
  })
end
vim.opt.rtp:prepend(lazypath)

require("lazy").setup({
	"rose-pine/neovim",
  { "catppuccin/nvim", as = "catppuccin" },
	"nvim-treesitter/nvim-treesitter",
	"tpope/vim-commentary",
	"tpope/vim-surround",
	"tpope/vim-fugitive",
	"windwp/nvim-autopairs",
	"mbbill/undotree",
	"sbdchd/neoformat",
	"luochen1990/rainbow",
	"ms-jpq/chadtree",
	"nvim-tree/nvim-web-devicons",
	"folke/trouble.nvim",
	"tanvirtin/vgit.nvim",
	{
		"nvim-telescope/telescope.nvim",
		requires = {
			{ "nvim-lua/plenary.nvim" },
			{ "BurntSushi/ripgrep" },
			{ "nvim-telescope/telescope-fzf-native.nvim", run = "make" },
		},
	},
	{
		"VonHeikemen/lsp-zero.nvim",
		requires = {
			{ "neovim/nvim-lspconfig" },
			{ "williamboman/mason.nvim" },
			{ "williamboman/mason-lspconfig.nvim" },
			{ "hrsh7th/nvim-cmp" },
			{ "hrsh7th/cmp-buffer" },
			{ "hrsh7th/cmp-path" },
			{ "saadparwaiz1/cmp_luasnip" },
			{ "hrsh7th/cmp-nvim-lsp" },
			{ "hrsh7th/cmp-nvim-lua" },
			{ "L3MON4D3/LuaSnip" },
			{ "rafamadriz/friendly-snippets" },
		},
	}
}
)