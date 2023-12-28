local M = {
  "rcarriga/nvim-notify",
  lazy = true,
  priority = 800,
  config = function()
    require("notify").setup({
      background_colour = "#000000",
      enabled = true,
    })
  end
}
return M
