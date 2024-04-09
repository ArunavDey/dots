return {
	"VonHeikemen/lsp-zero.nvim",
	branch = "v3.x",
	dependencies = {
		{ "neovim/nvim-lspconfig" }, -- config files for nvim lsp client
		{ "hrsh7th/nvim-cmp" }, -- completion
		{ "hrsh7th/cmp-nvim-lsp" }, -- nvim-cmp source
		{ "L3MON4D3/LuaSnip" }, -- code snippets
		{ "williamboman/mason.nvim" }, -- ui for installing LSPs
		{ "williamboman/mason-lspconfig.nvim" }, -- helper for Mason
		{ "folke/trouble.nvim" }, -- show errors and warnings
		{ "sbdchd/neoformat" }, -- code formatting
	},
	config = function()
		local vim = vim
		local lsp_zero = require("lsp-zero")
		local cmp = require("cmp")
		local cmp_select = { behavior = cmp.SelectBehavior.Select }
		local mason = require("mason")
		local mason_lspconfig = require("mason-lspconfig")

		lsp_zero.on_attach(function(_, bufnr)
			local opts = { buffer = bufnr, remap = false }
			vim.keymap.set("n", "gd", function()
				vim.lsp.buf.definition()
			end, opts)
			vim.keymap.set("n", "K", function()
				vim.lsp.buf.hover()
			end, opts)
			vim.keymap.set("n", "<leader>dd", function()
				vim.diagnostic.open_float()
			end, opts)
			vim.keymap.set("n", "[d", function()
				vim.diagnostic.goto_next()
			end, opts)
			vim.keymap.set("n", "d]", function()
				vim.diagnostic.goto_prev()
			end, opts)
			vim.keymap.set("n", "<leader>vca", function()
				vim.lsp.buf.code_action()
			end, opts)
			vim.keymap.set("n", "<leader>vrr", function()
				vim.lsp.buf.references()
			end, opts)
			vim.keymap.set("n", "<leader>vrn", function()
				vim.lsp.buf.rename()
			end, opts)
			vim.keymap.set("n", "<C-h>", function()
				vim.lsp.buf.signature_help()
			end, opts)
		end)

		mason.setup({})
		mason_lspconfig.setup({ handlers = { lsp_zero.default_setup } })

		cmp.setup({
			formatting = lsp_zero.cmp_format(),
			mapping = cmp.mapping.preset.insert({
				["<C-p>"] = cmp.mapping.select_prev_item(cmp_select),
				["<C-n>"] = cmp.mapping.select_next_item(cmp_select),
				["<C-y>"] = cmp.mapping.confirm({ select = true }),
				["<C-Space>"] = cmp.mapping.complete(),
			}),
		})
	end,
}
