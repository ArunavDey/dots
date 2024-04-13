return {
	"VonHeikemen/lsp-zero.nvim",
	branch = "v3.x",
	dependencies = {
		{ "neovim/nvim-lspconfig" }, -- config files for nvim lsp client
		{ "hrsh7th/nvim-cmp" }, -- completion
		{ "hrsh7th/cmp-nvim-lsp" }, -- nvim-cmp source
		{
			"L3MON4D3/LuaSnip",
			build = "make install_jsregexp",
			dependencies = { "rafamadriz/friendly-snippets" },
		}, -- code snippets
		{ "williamboman/mason.nvim" },
		{ "williamboman/mason-lspconfig.nvim" },
		{ "folke/trouble.nvim" }, -- show errors and warnings
		{ "stevearc/conform.nvim" }, -- use CLI formatters
		{ "windwp/nvim-ts-autotag" },
	},
	config = function()
		local lsp_zero = require("lsp-zero")
		local cmp = require("cmp")
		require("luasnip.loaders.from_vscode").lazy_load()

		lsp_zero.on_attach(function(_, bufnr)
			lsp_zero.default_keymaps({ buffer = bufnr })
		end)

		require("nvim-treesitter.configs").setup({
			autotag = {
				enable = true,
			},
		})

		require("conform").setup({
			formatters_by_ft = {
				lua = { "stylua" },
				python = { "isort" },
				javascript = { "prettier" },
				typescript = { "prettier" },
				javascriptreact = { "prettier" },
				typescriptreact = { "prettier" },
				vue = { "prettier" },
			},
		})

		require("mason").setup({})
		require("mason-lspconfig").setup({
			ensure_installed = { "pylsp", "tsserver", "eslint", "lua_ls", "rust_analyzer" },
			handlers = {
				function(server_name)
					require("lspconfig")[server_name].setup({})
				end,
			},
		})

		cmp.setup({
			window = {
				completion = cmp.config.window.bordered(),
				documentation = cmp.config.window.bordered(),
			},
		})
	end,
}
