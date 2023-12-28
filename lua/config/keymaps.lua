-- leader key
vim.g.mapleader = " "

-- Save file & save and close file
-- vim.keymap.set("n", "ww", ":update<CR> :e<CR>")
-- vim.keymap.set("n", "qq", ":wq<CR>")

-- Navigate between windows
-- vim.keymap.set("n", "<C-h>", "<C-w>h")
-- vim.keymap.set("n", "<C-l>", "<C-w>l")

-- Move line or M lines
vim.keymap.set("v", "K", ":m '<-2<CR>gv=gv")
vim.keymap.set("v", "J", ":m '>+1<CR>gv=gv")

-- Append line below
vim.keymap.set("n", "J", "mzJ`z")

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
vim.keymap.set("n", "<leader>f", vim.lsp.buf.format)

-- Quick fix navigation Custom with Trouble
vim.keymap.set("n", "<C-j>",
  function()
    require("trouble").open(); require("trouble").next({ skip_groups = true, jump = true })
  end)
vim.keymap.set("n", "<C-k>",
  function()
    require("trouble").open(); require("trouble").previous({ skip_groups = true, jump = true })
  end)


-- vim.keymap.set("n", "<C-k>", "<cmd>cnext<CR>zz")
-- vim.keymap.set("n", "<C-j>", "<cmd>cprev<CR>zz")
-- vim.keymap.set("n", "<leader>k", "<cmd>lnext<CR>zz")
-- vim.keymap.set("n", "<leader>j", "<cmd>lprev<CR>zz")

-- Trouble
vim.keymap.set("n", "<leader>t", "<cmd>TroubleToggle<cr>", { silent = true, noremap = true })

-- Telescope File Browser
vim.keymap.set("n", "<leader>fb", ":Telescope file_browser path=%:p:h select_buffer=true<CR>")

-- If you only want these mappings for toggle term use term://*toggleterm#* instead
vim.cmd("autocmd! TermOpen term://* lua set_terminal_keymaps()")

-- Crazy replace all for the pointed word
vim.keymap.set("n", "<leader>s", [[:%s/\<<C-r><C-w>\>/<C-r><C-w>/gI<Left><Left><Left>]])

-- Make executable, you know
vim.keymap.set("n", "<leader>x", "<cmd>!chmod +x %<CR>", { silent = true })

-- oil like you like yes yes
vim.keymap.set("n", "<leader>fe", "<CMD>Oil --float<CR>", { desc = "Open parent directory" })

-- Gen
vim.keymap.set({ 'n', 'v' }, '<leader>]', ':Gen<CR>')

-- Remove Q from exiting Vim (avoid fails, you know)
vim.keymap.set("n", "Q", "<nop>")
