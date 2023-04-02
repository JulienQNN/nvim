local M = {
    "neovim/nvim-lspconfig",
    config = function()
        local lsp = require("lsp-zero")
        lsp.preset("recommended")

        lsp.nvim_workspace()

        lsp.ensure_installed({
            "html",
            "cssls",
            "tsserver",
            "lua_ls",
            "eslint",
        })

        local cmp = require("cmp")
        local cmp_select = { behavior = cmp.SelectBehavior.Select }
        local cmp_mappings = lsp.defaults.cmp_mappings({
            ["<C-p>"] = cmp.mapping.select_prev_item(cmp_select),
            ["<C-n>"] = cmp.mapping.select_next_item(cmp_select),
            ["<C-y>"] = cmp.mapping.confirm({ select = true }),
            ["<C-Space>"] = cmp.mapping.complete(),
        })

        lsp.setup_nvim_cmp({
            mapping = cmp_mappings,
        })

        lsp.set_preferences({
            suggest_lsp_servers = false,
        })

        lsp.on_attach(function(client, bufnr)
            local opts = { buffer = bufnr, remap = false }

            vim.keymap.set("n", "gd", function()
                vim.lsp.buf.definition()
            end, opts)
            vim.keymap.set("n", "K", function()
                vim.lsp.buf.hover()
            end, opts)
            vim.keymap.set("n", "<leader>vws", function()
                vim.lsp.buf.workspace_symbol()
            end, opts)
            vim.keymap.set("n", "<leader>vp", function()
                vim.diagnostic.open_float()
            end, opts)
            vim.keymap.set("n", "<C-k>", function()
                vim.diagnostic.goto_next()
            end, opts)
            vim.keymap.set("n", "<C-j>", function()
                vim.diagnostic.goto_prev()
            end, opts)
            vim.keymap.set("n", "<leader>vca", function()
                vim.lsp.buf.code_action()
            end, opts)
            vim.keymap.set("n", "<leader>vrr", function()
                vim.lsp.buf.references()
            end, opts)
            vim.keymap.set("n", "<leader>vrn", function()
                vim.lsp.buf.rename()
            end, opts)
            vim.keymap.set("i", "<C-h>", function()
                vim.lsp.buf.signature_help()
            end, opts)
        end)

        lsp.setup()

        local null_ls = require("null-ls")
        local null_opts = lsp.build_options("null-ls", {})

        null_ls.setup({
            on_attach = function(client, bufnr)
                null_opts.on_attach(client, bufnr)
            end,
            sources = {
                -- You can add tools not supported by mason.nvim
            },
        })

        require("mason-null-ls").setup({
            ensure_installed = nil,
            automatic_installation = false, -- You can still set this to `true`
            automatic_setup = true,
        })

        -- Required when `automatic_setup` is true
        require("mason-null-ls").setup_handlers()

        vim.diagnostic.config({
            virtual_text = true,
        })
    end,
}
return M
