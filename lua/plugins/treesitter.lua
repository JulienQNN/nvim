-------------------------------------------------
-- name : nvim-treesitter
-- url  : https://github.com/nvim-treesitter/nvim-treesitter
-------------------------------------------------
local M = {
    "nvim-treesitter/nvim-treesitter",
    build = ":TSUpdate",
    config = function()
        require("nvim-treesitter.configs").setup({
            ensure_installed = {
                "bash",
                "dockerfile",
                "json",
                "jsonc",
                "json5",
                "lua",
                "python",
                "yaml",
                "markdown",
                "markdown_inline",
                "html",
                "php",
                "sql",
                "vim",
                "typescript",
                "javascript",
                "tsx",
                "css",
                "scss",
                "go",
                "rust",
                "toml",
            },     -- one of "all" or a list of languages
            highlight = {
                enable = true, -- false will disable the whole extension
                additional_vim_regex_highlighting = true,
            },
            sync_install = false,
            -- Automatically install missing parsers when entering buffer
            -- Recommendation: set to false if you don't have `tree-sitter` CLI installed locally
            auto_install = true,
            autotag = {
                enable = true,
            },
            indent = { enable = true },
        })
    end,
}

return M
