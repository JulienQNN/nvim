local M = {
    "utilyre/barbecue.nvim",
    config = function()
        require("barbecue").setup {

            theme = "catppuccin",
            integrations = {
                barbecue = {
                    dim_dirname = true,
                    bold_basename = true,
                    dim_context = false,
                }
            }
        }
    end
}

return M
