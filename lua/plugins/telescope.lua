local M = {
  {
    "nvim-telescope/telescope-fzf-native.nvim",
    build = "make"
  },
  {
    'nvim-telescope/telescope.nvim',
    tag = '0.1.5',
    dependencies = {
      'nvim-lua/plenary.nvim',
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
      local builtin = require('telescope.builtin')

      vim.keymap.set('n', '<leader>fd', builtin.find_files, {})
      vim.keymap.set('n', '<leader>fr', builtin.live_grep, {})

      require("telescope").load_extension("live_grep_args", "fzf")
    end
  },
}

return M
