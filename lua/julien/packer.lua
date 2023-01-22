-- This file can be loaded by calling `lua require('plugins')` from your init.vim

-- Only required if you have packer configured as `opt`
vim.cmd [[packadd packer.nvim]]

return require('packer').startup(function(use)

    -- Packer can manage itself
    use { 'wbthomason/packer.nvim' }

    -- Telescope
    use {
        'nvim-telescope/telescope.nvim', tag = '0.1.0',
        requires = { { 'nvim-lua/plenary.nvim' } }
    }
    -- catppuccin colors
    use { "catppuccin/nvim", as = "catppuccin" }

    -- Treesitter
    use { 'nvim-treesitter/nvim-treesitter', run = ':TSUpdate' }
    use { 'nvim-treesitter/playground' }

    -- Fast File Switcher from the thePrimeagen
    use { 'thePrimeagen/harpoon' }

    -- Undotree what to say
    use { 'mbbill/undotree' }

    -- Git
    use { 'tpope/vim-fugitive' }

    -- Status Bar
    use { 'feline-nvim/feline.nvim' }

    -- Autopairs
    use {
        "windwp/nvim-autopairs",
        config = function() require("nvim-autopairs").setup {} end
    }

    -- Rainbow brackets
    use { "luochen1990/rainbow" }

    -- Comments
    use {
        'numToStr/Comment.nvim',
        config = function()
            require('Comment').setup()
        end
    }

    -- Tree
    use {
        'nvim-tree/nvim-tree.lua',
        requires = {
            'nvim-tree/nvim-web-devicons', -- for file icons
        },
        tag = 'nightly'
    }

    -- Alpha Vim Welcome dashboard
    use {
        'goolord/alpha-nvim',
        config = function()
            require 'alpha'.setup(require 'alpha.themes.dashboard'.config)
        end
    }

    -- init.lua
    use { "lukas-reineke/indent-blankline.nvim" }

    -- LSP
    use {
        'VonHeikemen/lsp-zero.nvim',
        requires = {

            -- LSP Support
            { 'neovim/nvim-lspconfig' },
            { 'williamboman/mason.nvim' },
            { 'williamboman/mason-lspconfig.nvim' },

            -- Autocompletion
            { 'hrsh7th/nvim-cmp' },
            { 'hrsh7th/cmp-buffer' },
            { 'hrsh7th/cmp-path' },
            { 'saadparwaiz1/cmp_luasnip' },
            { 'hrsh7th/cmp-nvim-lsp' },
            { 'hrsh7th/cmp-nvim-lua' },

            -- Snippets
            { 'L3MON4D3/LuaSnip' },

            -- Snippet Collection (Optional)
            { 'rafamadriz/friendly-snippets' },
        }
    }

end)
