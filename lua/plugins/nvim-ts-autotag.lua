local M = {
  "windwp/nvim-ts-autotag",
  lazy = true,
  priority = 800,
  config = function()
    require('nvim-ts-autotag').setup()
  end
}

return M
