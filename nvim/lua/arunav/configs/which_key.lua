local wk = require("which-key")

wk.register({
    u = "Undo tree",
    t = "Tags",
    c = "Format code",
    f = {
        name = "files",
        p = "Find file",
        f = "Find in files",
        b = "Open buffers"
    }
}, {prefix = "<leader>"})
