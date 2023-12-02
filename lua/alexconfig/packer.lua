vim.cmd [[packadd packer.nvim]]

return require('packer').startup(function(use)
    use 'wbthomason/packer.nvim'

    use {'akinsho/toggleterm.nvim', tag = '*' }

    use {
        'nvim-telescope/telescope.nvim', tag = '0.1.4',
        requires = { {
            'BurntSushi/ripgrep',
            'nvim-lua/plenary.nvim'
        } }
    }

    use {
        "nvim-neo-tree/neo-tree.nvim",
        branch = "v3.x",
        requires = { 
            "nvim-lua/plenary.nvim",
            "nvim-tree/nvim-web-devicons",
            "MunifTanjim/nui.nvim",
        }
    }

    use { "folke/tokyonight.nvim" }

    use('nvim-treesitter/nvim-treesitter', { run = ':TSUpdate' })

    use {
        'VonHeikemen/lsp-zero.nvim',
        branch = 'v1.x',
        requires = {
            -- LSP Support
            { 'neovim/nvim-lspconfig' },           -- Required
            { 'williamboman/mason.nvim' },         -- Optional
            { 'williamboman/mason-lspconfig.nvim' }, -- Optional

            -- Autocompletion
            { 'hrsh7th/nvim-cmp' },       -- Required
            { 'hrsh7th/cmp-nvim-lsp' },   -- Required
            { 'hrsh7th/cmp-buffer' },     -- Optional
            { 'hrsh7th/cmp-path' },       -- Optional
            { 'saadparwaiz1/cmp_luasnip' }, -- Optional
            { 'hrsh7th/cmp-nvim-lua' },   -- Optional
            { 'hrsh7th/nvim-gtd' },       -- Go

            -- Snippets
            { 'L3MON4D3/LuaSnip' },           -- Required
            { 'rafamadriz/friendly-snippets' }, -- Optional
        }
    }

    -- golang support
    use 'ray-x/go.nvim'
    use 'ray-x/guihua.lua' -- recommended if need floating window support

    -- lsp-config
    use 'neovim/nvim-lspconfig'

    -- toggle term
    -- use { 'akinsho/toggleterm.nvim', tag = '*' }

    use {
        "windwp/nvim-autopairs",
        config = function() require("nvim-autopairs").setup {} end
    }

    use "terrortylor/nvim-comment"
    use "kdheepak/lazygit.nvim"

    -- use "lukas-reineke/indent-blankline.nvim"
    -- use 'kkvh/vim-docker-tools'
end)
