require("neo-tree").setup({
    filesystem = {
        filtered_items = {
            visible = true,
        },
    },
})

vim.cmd([[nnoremap \ :Neotree reveal<cr>]])
