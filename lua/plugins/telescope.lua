local M = {
    {
        "nvim-telescope/telescope-fzf-native.nvim",
        build = "make",
    },

    {
        "nvim-telescope/telescope.nvim",
        branch = "master",
        dependencies = {
            "nvim-lua/plenary.nvim",
            "nvim-telescope/telescope-live-grep-args.nvim",
            "nvim-telescope/telescope-fzf-native.nvim",
        },
        config = function()
            local telescope = require("telescope")
            telescope.setup({
                pickers = {
                    find_files = {
                        hidden = true,
                    },
                    live_grep = {
                        hidden = true,
                    },
                },
                extensions = {
                    fzf = {
                        fuzzy = true,
                        override_generic_sorter = true,
                        override_file_sorter = true,
                        case_mode = "smart_case",
                    },
                },
            })

            require("telescope").load_extension("live_grep_args", "fzf")
            local builtin = require("telescope.builtin")

            vim.keymap.set("n", "<leader>ff", builtin.find_files, {})
            vim.keymap.set("n", "<C-p>", builtin.live_grep, {})
        end,
    },
}

return M
