vim.g.mapleader = " "

-- Navigate between windows
vim.keymap.set("n", "<C-h>", "<C-w>h")
vim.keymap.set("n", "<C-l>", "<C-w>l")

-- Move line or M lines
vim.keymap.set("v", "J", ":m '>+1<CR>gv=gv")
vim.keymap.set("v", "K", ":m '<-2<CR>gv=gv")

-- Append line below
vim.keymap.set("n", "J", "mzJ`z")

-- Move down half or up half of the file
vim.keymap.set("n", "<C-d>", "<C-d>zz")
vim.keymap.set("n", "<C-u>", "<C-u>zz")

vim.keymap.set("n", "n", "nzzzv")
vim.keymap.set("n", "N", "Nzzzv")

-- Paste without loosing current paste buffer
vim.keymap.set("x", "<leader>p", [["_dP]])

-- Yank global (with system clipboard)
vim.keymap.set({ "n", "v" }, "<leader>y", [["+y]])
vim.keymap.set("n", "<leader>Y", [["+Y]])

-- Delete without register
vim.keymap.set({ "n", "v" }, "<leader>d", [["_d]])

-- Format file with lsp
vim.keymap.set("n", "<leader>f", vim.lsp.buf.format)

-- Quick fix navigation
vim.keymap.set("n", "<C-k>", "<cmd>cnext<CR>zz")
vim.keymap.set("n", "<C-j>", "<cmd>cprev<CR>zz")
vim.keymap.set("n", "<leader>k", "<cmd>lnext<CR>zz")
vim.keymap.set("n", "<leader>j", "<cmd>lprev<CR>zz")

-- Crazy replace all for the pointed word
vim.keymap.set("n", "<leader>s", [[:%s/\<<C-r><C-w>\>/<C-r><C-w>/gI<Left><Left><Left>]])

-- Make executable, you know
vim.keymap.set("n", "<leader>x", "<cmd>!chmod +x %<CRr", { silent = true })

-- Remove Q from exiting Vim (avoid fails, you know)
vim.keymap.set("n", "Q", "<nop>")
