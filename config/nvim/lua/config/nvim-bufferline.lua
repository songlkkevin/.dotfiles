vim.opt.termguicolors = true
require("bufferline").setup {
    options = {
        diagnostics = false,
        offsets = {{
            filetype = "NvimTree",
            text = "File Explorer",
            highlight = "Directory",
            text_align = "left"
        }}
    }
}
