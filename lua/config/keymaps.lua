vim.g.mapleader = " "

-- Save file
vim.keymap.set("n", "ww", ":update<CR>")
-- Save and close file
vim.keymap.set("n", "qq", ":wq<CR>")

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
vim.keymap.set({ "n", "v" }, "<leader>Y", [["+Y]])

-- Delete without register
vim.keymap.set({ "n", "v" }, "<leader>d", [["_d]])

-- Open Diagnostic in floating window
vim.keymap.set("n", "<leader>i", ":lua vim.diagnostic.open_float(nil, {focus=false, scope='cursor'})<CR>")

-- Format file with lsp
vim.keymap.set("n", "<leader>f", vim.lsp.buf.format)

-- Quick fix navigation
vim.keymap.set("n", "<C-k>", "<cmd>lnext<CR>zz")
vim.keymap.set("n", "<C-j>", "<cmd>lprev<CR>zz")

-- HopWord
vim.keymap.set("n", "<leader>h", "<cmd>HopWord<cr>", { silent = true, noremap = true })

-- Trouble
vim.keymap.set("n", "<leader>t", "<cmd>TroubleToggle<cr>", { silent = true, noremap = true })

-- Persistence
vim.keymap.set("n", "<leader>qs", [[<cmd>lua require("persistence").load({ last = true })<cr>]], {})

-- NeoTreeToggle
vim.keymap.set("n", "<C-i>", ":NeoTreeFloatToggle<CR>", { noremap = true })

-- ToggleTerm
vim.keymap.set({ "n", "t" }, "<C-t>", ":ToggleTerm size=10 direction=horizontal<CR>")
function _G.set_terminal_keymaps()
    local opts = { buffer = 0 }
    vim.keymap.set("t", "<esc>", [[<C-\><C-n>]], opts)
end

-- if you only want these mappings for toggle term use term://*toggleterm#* instead
vim.cmd("autocmd! TermOpen term://* lua set_terminal_keymaps()")

-- Crazy replace all for the pointed word
vim.keymap.set("n", "<leader>s", [[:%s/\<<C-r><C-w>\>/<C-r><C-w>/gI<Left><Left><Left>]])

-- Make executable, you know
vim.keymap.set("n", "<leader>x", "<cmd>!chmod +x %<CR>", { silent = true })

-- Copilot accept suggestion
vim.keymap.set("i", "<C-J>", 'copilot#Accept("<CR>")',
    { noremap = true, silent = true, expr = true, replace_keycodes = false })

-- Remove Q from exiting Vim (avoid fails, you know)
vim.keymap.set("n", "Q", "<nop>")
