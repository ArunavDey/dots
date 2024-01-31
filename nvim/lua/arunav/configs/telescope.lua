local telescope = require("telescope")

telescope.setup({
  pickers = {
    buffers = {
      show_all_buffers = true,
      sort_lastused = true,
      previewer = false,
      mappings = {
        i = {
          ["C-d>"] = "delete_buffer",
        },
        n = {
          ["C-d"] = "delete_buffer",
        }
      }
    }
  }
})

telescope.load_extension("fzf")
telescope.load_extension("file_browser")
