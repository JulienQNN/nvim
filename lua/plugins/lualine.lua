local M = {
  'nvim-lualine/lualine.nvim',
  name = "lualine",
  lazy = false,
  priority = 1000,
  requires = {
    'nvim-tree/nvim-web-devicons', opt = true
  },
  config = function()
    require('lualine').setup {
      options = {
        theme = 'catppuccin-mocha',
        icons_enabled = true,
        component_separators = '|',
        section_separators = { left = '', right = '' },
      },
      sections = {
        lualine_a = {
          { 'mode', separator = { left = '' }, right_padding = 2 },
        },
        lualine_b = { 'filename', 'branch' },
        lualine_c = { 'fileformat' },
        lualine_x = {},
        lualine_y = { {
          'copilot',
          symbols = {
            status = {
              icons = {
                enabled = "",
                disabled = "",
                warning = "",
                unknown = ""
              },
              hl = {
                enabled = "#a6e3a1",
                disabled = "#6272A4",
                warning = "#fab387",
                unknown = "#f38ba8"
              }
            },
            spinners = require("copilot-lualine.spinners").dots,
            spinner_color = "#6272A4"
          },
          show_colors = true,
          show_loading = true
        }, 'filetype', 'progress' },
        lualine_z = {
          { 'location', separator = { right = '' }, left_padding = 2 },
        },
      },
      inactive_sections = {
        lualine_a = { 'filename' },
        lualine_b = {},
        lualine_c = {},
        lualine_x = {},
        lualine_y = {},
        lualine_z = { 'location' },
      },
      tabline = {},
      extensions = {},
    }
  end
}


return M
