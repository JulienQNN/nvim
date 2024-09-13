-- leader key
vim.g.mapleader = " "

-- Move line(s)
vim.keymap.set("v", "J", ":m '>+1<CR>gv=gv", { silent = true })
vim.keymap.set("v", "K", ":m '<-2<CR>gv=gv", { silent = true })

-- Append line below
vim.keymap.set("n", "J", "mzJ`z")
vim.keymap.set("n", "K", "mzK`z")

vim.keymap.set("n", "n", "n")

-- Paste without loosing current paste buffer
vim.keymap.set("x", "<leader>p", [["_dP]])

-- Yank global (with system clipboard)
vim.keymap.set({ "n", "v" }, "<leader>y", [["+y]])
vim.keymap.set({ "n", "v" }, "<leader>Y", [["+Y]])

-- Delete without register
vim.keymap.set({ "n", "v" }, "<leader>d", [["_d]])

-- Open Diagnostic in floating window
vim.keymap.set("n", "<leader>i", ":lua vim.diagnostic.open_float(nil, {focus=false, scope='cursor'})<CR>")

-- Format file with lsp
vim.keymap.set("n", "<leader>f", vim.lsp.buf.format, {})

-- Quick fix navigation Custom with Trouble
vim.keymap.set("n", "<C-j>", function()
  require("trouble").open()
  require("trouble").next({ skip_groups = true, jump = true })
end)
vim.keymap.set("n", "<C-k>", function()
  require("trouble").open()
  require("trouble").previous({ skip_groups = true, jump = true })
end)

-- Trouble
vim.keymap.set("n", "<leader>t", "<cmd>TroubleToggle<cr>", { silent = true, noremap = true })

-- Crazy replace all for the pointed word
vim.keymap.set("n", "<leader>s", [[:%s/\<<C-r><C-w>\>/<C-r><C-w>/gI<Left><Left><Left>]])

-- Make executable, you know
vim.keymap.set("n", "<leader>x", "<cmd>!chmod +x %<CR>", { silent = true })

-- oil like you like yes yes
vim.keymap.set("n", "<leader>e", "<CMD>Oil --float<CR>", { desc = "Open parent directory" })

-- Remove Q from exiting Vim (avoid fails, you know)
vim.keymap.set("n", "Q", "<nop>")
