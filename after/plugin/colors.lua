require("catppuccin").setup({
	flavour = "mocha",
	transparent_background = true,
	no_italic = false, -- Force no italic
	no_bold = false, -- Force no bold
	integrations = {
		nvimtree = true,
		telescope = true,
		-- For more plugins integrations please scroll down (https://github.com/catppuccin/nvim#integrations)
	},
})

color = color or "catppuccin"
	vim.cmd.colorscheme(color)
