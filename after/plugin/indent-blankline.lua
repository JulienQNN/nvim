vim.opt.termguicolors = true
vim.opt.list = true
vim.opt.listchars:append "space: "

-- Personal catppucin colors Mocka
vim.cmd [[highlight IndentBlanklineIndent6 guifg=#f5c2e7 gui=nocombine]] -- Pink
vim.cmd [[highlight IndentBlanklineIndent5 guifg=#cba6f7 gui=nocombine]] -- Mauve
vim.cmd [[highlight IndentBlanklineIndent4 guifg=#f38ba8 gui=nocombine]] -- Red
vim.cmd [[highlight IndentBlanklineIndent3 guifg=#eba0ac gui=nocombine]] -- Maroon
vim.cmd [[highlight IndentBlanklineIndent2 guifg=#fab387 gui=nocombine]] -- Peach
vim.cmd [[highlight IndentBlanklineIndent1 guifg=#f9e2af gui=nocombine]] -- Yellow


require("indent_blankline").setup {
    space_char_blankline = " ",
    show_current_context = true,
    show_current_context_start = true,

    char_highlight_list = {
        "IndentBlanklineIndent1",
        "IndentBlanklineIndent2",
        "IndentBlanklineIndent3",
        "IndentBlanklineIndent4",
        "IndentBlanklineIndent5",
        "IndentBlanklineIndent6",
    }

}
