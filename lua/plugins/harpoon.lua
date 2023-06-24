local M = {
    "thePrimeagen/harpoon",
    config = function()
        -- Harpoon
        local mark = require("harpoon.mark")
        local ui = require("harpoon.ui")
        vim.keymap.set("n", "<leader>a", mark.add_file)
        vim.keymap.set("n", "<leader>e", ui.toggle_quick_menu)

        vim.keymap.set("n", "<C-n>", function() ui.nav_next() end)
        vim.keymap.set("n", "<C-m>", function() ui.nav_prev() end)
    end,
}

return M
