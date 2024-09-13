local M = {
  "RRethy/vim-illuminate",
  config = function()
    require("illuminate").configure({
      min_count_to_highlight = 2,
      modes_allowlist = { "i", "n" },
      providers = {
        "lsp",
        "treesitter",
        "regex",
      },
    })
    vim.api.nvim_set_hl(0, "IlluminatedWordRead", { bg = "#585b70", bold = true })
    vim.api.nvim_set_hl(0, "IlluminatedWordRead", { bg = "#585b70", bold = true })
  end,
  event = { "CursorHold", "CursorHoldI" },
}

return M
