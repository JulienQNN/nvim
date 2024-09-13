vim.opt.nu = true

vim.opt.relativenumber = true
vim.opt.cursorline = false
vim.opt.tabstop = 4
vim.opt.softtabstop = 4
vim.opt.shiftwidth = 4
vim.opt.expandtab = true
vim.opt.showtabline = 2
vim.opt.smartindent = true
vim.opt.wrap = false
vim.opt.swapfile = false
vim.opt.backup = false
vim.opt.hlsearch = false
vim.opt.incsearch = true
vim.opt.foldmethod = "syntax"
vim.opt.foldenable = false
vim.opt.termguicolors = true
vim.opt.cursorline = true

vim.opt.scrolloff = 15
vim.opt.signcolumn = "yes"
vim.opt.isfname:append("@-@")

vim.g.loaded_netrw = 1
vim.g.loaded_netrwPlugin = 1
vim.g.nvim_tree_git_hl = 1
vim.g.nvim_tree_show_icons = {
  git = 0,
  folders = 1,
  files = 1,
}

vim.opt.termguicolors = true
vim.opt.updatetime = 5
vim.g.copilot_no_tab_map = true

-- vim.cmd([[autocmd BufWritePre * lua vim.lsp.buf.format()]])

-- vim.lsp.set_log_level("off")
