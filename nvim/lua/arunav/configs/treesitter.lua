local treesitter = require("nvim-treesitter.configs")

treesitter.setup({
  sync_install = true,
  highlight = {
    enable = true,
  },
})
