local lsp = require("lspconfig")

lsp.html.setup({})

lsp.pyright.setup({
	python = {
		analysis = {
			autoSearchPaths = true,
			diagnosticMode = "workspace",
			useLibraryCodeForTypes = true,
		},
	},
})

lsp.sumneko_lua.setup({
	settings = {
		Lua = {
			diagnostics = {
				globals = { "vim" },
			},
		},
	},
})

lsp.java_language_server.setup({})
