local M = {
  "nvim-treesitter/nvim-treesitter",
  build = ":TSUpdate",
  config = function()
    require("nvim-treesitter.configs").setup({
      sync_install = true,
      auto_install = true,
      indent = { enable = true },
      highlight = {
        enable = true, -- false will disable the whole extension
        additional_vim_regex_highlighting = true,
      },
      autotag = {
        enable = true,
      },
      settings = {
        yaml = {
          format = {
            enable = true,
          },
          hover = true,
          completion = true,

          customTags = {
            "!And",
            "!If",
            "!Not",
            "!Not sequence",
            "!Equals",
            "!Equals sequence",
            "!Or",
            "!FindInMap sequence",
            "!Base64",
            "!Cidr",
            "!Cidr sequence",
            "!Ref",
            "!Sub",
            "!GetAtt",
            "!GetAtt sequence",
            "!GetAZs",
            "!ImportValue",
            "!Select",
            "!Select sequence",
            "!Split",
            "!Split sequence",
            "!Join sequence",
            "!And sequence",
            "!If sequence",
            "!Or sequence",
            "!FindInMap",
            "!Join",
            "!Sub sequence",
            "!ImportValue sequence",
          },
        },
      },
    })
  end,
}

return M
