return {
    -- Dashboard
    "glepnir/dashboard-nvim",
    -- Telescope
    {
        "nvim-telescope/telescope.nvim",
        version = "0.1.1",
        dependencies = "nvim-lua/plenary.nvim",
    },
    -- Hop
    {
        "phaazon/hop.nvim",
        branch = "v2",
    },
    -- Treesitter
    {
        "nvim-treesitter/nvim-treesitter",
        build = ":TSUpdate",
        dependencies = { "nvim-treesitter/playground", "nvim-treesitter/nvim-treesitter-context" },
    },
    -- Fast File Switcher from the thePrimeagen
    "thePrimeagen/harpoon",
    -- Undotree what to say
    "mbbill/undotree",
    -- Illuminate
    "RRethy/vim-illuminate",
    -- Trouble
    "folke/trouble.nvim",
    -- Neo tree
    {
        "nvim-neo-tree/neo-tree.nvim",
        branch = "v2.x",
        dependencies = {
            "nvim-lua/plenary.nvim",
            "nvim-tree/nvim-web-devicons", -- not strictly required, but recommended
            "MunifTanjim/nui.nvim",
        },
    },
    -- Git
    "tpope/vim-fugitive",
    -- Status Bar
    {
        'nvim-lualine/lualine.nvim',
        requires = { 'nvim-tree/nvim-web-devicons', opt = true }
    },
    -- Autopairs
    {
        "windwp/nvim-autopairs",
        config = function()
            require("nvim-autopairs").setup({})
        end,
    },
    -- Comments
    {
        "numToStr/Comment.nvim",
        config = function()
            require("Comment").setup()
        end,
    },
    -- Toggle Term
    {
        "akinsho/toggleterm.nvim",
        version = "*",
        config = function()
            require("toggleterm").setup()
        end,
    },
    -- lines
    "lukas-reineke/indent-blankline.nvim",
    -- Color lines
    "echasnovski/mini.indentscope",
    -- Dev Icons
    "nvim-tree/nvim-web-devicons",
    "neovim/nvim-lspconfig",
    -- Schema Store
    {
        "b0o/SchemaStore.nvim",
        version = false,
    },
    -- Lua
    {
        "folke/persistence.nvim",
        event = "BufReadPre",
        config = function()
            require("persistence").setup()
        end,
    },
    -- LSP
    {
        "VonHeikemen/lsp-zero.nvim",
        branch = "v2.x",
        dependencies = {
            -- LSP Support
            "neovim/nvim-lspconfig",
            {
                -- Optional
                "williamboman/mason.nvim",
                build = function()
                    pcall(vim.cmd, "MasonUpdate")
                end,
            },
            "williamboman/mason-lspconfig.nvim",
            "jay-babu/mason-null-ls.nvim",
            "jose-elias-alvarez/null-ls.nvim",
            -- Autocompletion
            "hrsh7th/nvim-cmp",
            "hrsh7th/cmp-nvim-lsp",
            "hrsh7th/cmp-buffer",
            "hrsh7th/cmp-path",
            "saadparwaiz1/cmp_luasnip",
            "hrsh7th/cmp-nvim-lua",

            -- Snippets
            "L3MON4D3/LuaSnip",
            "rafamadriz/friendly-snippets",
        },
    },
    -- Autotag
    "windwp/nvim-ts-autotag",
    -- Copilot
    "github/copilot.vim",
    -- winbar
    {
        "utilyre/barbecue.nvim",
        name = "barbecue",
        version = "*",
        dependencies = {
            "SmiteshP/nvim-navic",
            "nvim-tree/nvim-web-devicons",
        },
    },
    -- GitSigns
    {
        "lewis6991/gitsigns.nvim",
    },
    -- Prettier
    "MunifTanjim/prettier.nvim",
    "nvim-lua/plenary.nvim",
    -- Cheatsheet
    {
        "sudormrfbin/cheatsheet.nvim",
        dependencies = {
            "nvim-telescope/telescope.nvim",
            "nvim-lua/popup.nvim",
            "nvim-lua/plenary.nvim",
        },
    },
    -- Markdown Preview
    {
        "iamcco/markdown-preview.nvim",
        build = "cd app && npm install",
        config = function()
            vim.g.mkdp_filetypes = { "markdown" }
        end,
        ft = { "markdown" },
    },
    -- vim-startuptime
    "dstein64/vim-startuptime",
    -- catppuccin colors
    "catppuccin/nvim",
    name = "catppuccin",
}
