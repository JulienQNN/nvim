return {
  {
    "mason-org/mason.nvim",
    opts = {}
  },
  {
    "mason-org/mason-lspconfig.nvim",
    opts = {
      auto_install = true,
    },
    config = function()
      require("mason-lspconfig").setup({
        ensure_installed = {
          "terraformls",
          "tflint",
          "bashls",
          "cssls",
          "dockerls",
          "dotls",
          "gopls",
          "eslint",
          "html",
          "jsonls",
          "lua_ls",
          "pyright",
          "vuels",
          "yamlls",
        },
        handlers = {
          function(server_name)
            require("lspconfig")[server_name].setup({})
          end,
        },
      })
    end,
  },
  {
    "neovim/nvim-lspconfig",
    config = function()
      local util = require("lspconfig/util")
      local lspconfig = require("lspconfig")
      lspconfig.bashls.setup({})
      lspconfig.cssls.setup({})
      lspconfig.docker_compose_language_service.setup({})
      lspconfig.dockerls.setup({})
      lspconfig.dotls.setup({})
      lspconfig.html.setup({})
      lspconfig.jsonls.setup({})
      lspconfig.lua_ls.setup({})
      lspconfig.pyright.setup({})
      lspconfig.vuels.setup({})
      lspconfig.yamlls.setup({})
      lspconfig.terraformls.setup({})
      lspconfig.tflint.setup({})
      lspconfig.svelte.setup({})
      lspconfig.bashls.setup({})
      lspconfig.gopls.setup({
        cmd = { "gopls" },
        filetypes = { "go", "gomod", "gowork", "gotmpl" },
        root_dir = util.root_pattern("go.work", "go.mod", ".git"),
        settings = {
          gopls = {
            completeUnimported = true,
            usePlaceholders = true,
            analyses = {
              unusedparams = true,
            },
          },
        },
      })
    end,
  },
  {
    "nvim-lua/lsp-status.nvim",
  },
  {
    "onsails/lspkind.nvim",
  },
}
