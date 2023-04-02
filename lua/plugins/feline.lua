local M = {
'feline-nvim/feline.nvim',
    name = "feline-nvim",
    lazy = false,
    priority = 1000,
    config = function()
    local ctp_feline = require('catppuccin.groups.integrations.feline')

require("feline").setup({
    components = ctp_feline.get(),
    })
    end
}


return M
