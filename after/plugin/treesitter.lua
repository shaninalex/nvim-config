require('nvim-treesitter.configs').setup {
    ensure_installed = { "c", "python", "lua", "sql", "go", "typescript", "html", "scss", "javascript" },
    sync_install = false,
    auto_install = true,

    highlight = {
        enable = true,
        additional_vim_regex_highlighting = false,
    },
}
