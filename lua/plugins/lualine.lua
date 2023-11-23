local colors = {
  red = '#f38ba8',
  grey = '#45475a',
  base = '#181825',
  black = '#11111b',
  lavender = '#b4befe',
  teal = '#94e2d5',
  peach = '#fab387',
  green = '#a6e3a1',
  blue = '#89b4fa'
}

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
        theme = 'catppuccin',
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
        lualine_y = { 'filetype', 'progress' },
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
