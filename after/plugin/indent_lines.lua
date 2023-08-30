vim.opt.termguicolors = true

vim.cmd [[highlight IndentBlanklineIndent1 guifg=#434343 gui=nocombine]]
vim.opt.list = true

require("indent_blankline").setup {
    show_current_context = true,
    show_current_context_start = true,
    char_highlight_list = {
        "IndentBlanklineIndent1",
    },
}
