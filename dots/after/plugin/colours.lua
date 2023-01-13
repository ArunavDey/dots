function ColourNeovim(colour)
	colour = colour or "gruvbox"
	vim.cmd.colorscheme(colour)

	vim.api.nvim_set_hl(0, "Normal", { bg = "none" })
	vim.api.nvim_set_hl(0, "NormalFloat", { bg = "none" })
end

ColourNeovim()
-- ColourNeovim("catppuccin-mocha")
