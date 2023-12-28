local M = {
  "zbirenbaum/copilot.lua",
  cmd = "Copilot",
  event = "InsertEnter",
  lazy = true,
  config = function()
    require('copilot').setup({
      panel = {
        enable = false,
      },
      suggestion = {
        enabled = false,
        auto_trigger = true,
        debounce = 75,
        keymap = {
          accept = "<C-e>",
          -- accept_word = true,
          -- accept_line = true,
          open = "<C-r>"
        },
      },
      filetypes = {
        yaml = true,
        markdown = true,
        help = false,
        gitcommit = false,
        gitrebase = false,
        cvs = false,
        ["."] = false,
      },
      copilot_node_command = 'node', -- Node.js version must be > 18.x
      server_opts_overrides = {},
    })
  end,
}

return M
