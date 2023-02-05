require("catppuccin").setup({
    flavour = "mocha",
    transparent_background = true,
    no_italic = false, -- Force no italic
    no_bold = false, -- Force no bold
    integrations = {
        nvimtree = true,
        telescope = true,
        treesitter = true,
        treesitter_context = true,
        mason = true,
        cmp = true,
        dashboard = true,
        gitsigns = true,
        harpoon = false,
        barbecue = {
            dim_dirname = true,
        },
        indent_blankline = {
            enabled = true,
            colored_indent_levels = true,
        },
    },
})

color = color or "catppuccin"
vim.cmd.colorscheme(color)

vim.api.nvim_create_autocmd("ColorScheme", {
    pattern = "*",
    callback = function()
        package.loaded["feline"] = nil
        package.loaded["catppuccin.groups.integrations.feline"] = nil
        require("feline").setup {
            components = require("catppuccin.groups.integrations.feline").get(),
        }
    end,
})
