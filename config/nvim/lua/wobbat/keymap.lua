vim.g.mapleader = " "
-- File manager
vim.keymap.set("n", "<leader>fb", vim.cmd.Ex)
vim.keymap.set("n", "L", "$")
vim.keymap.set("n", "H", "_")
vim.keymap.set("n", "J", "<C-d>zz")
vim.keymap.set("n", "K", "<C-u>zz", { noremap = true })
-- vim.keymap.set("n", "<leader>ftb", ":Telescope file_browser path=%:p:h select_buffer=true<CR>", { noremap = true })
-- Better redo
vim.keymap.set("n", "U", "<C-r>")
-- open diagnostics?
vim.api.nvim_set_keymap('n', '<leader>do', '<cmd>lua vim.diagnostic.open_float()<CR>', { noremap = true, silent = true })
vim.api.nvim_set_keymap('n', '<leader>dn', '<cmd>DailyNote<CR>', { noremap = true, silent = true })


vim.keymap.set("n", "<leader>id", "<cmd> InsertTime<CR>", { noremap = true })
vim.keymap.set("n", "<leader>ct", "<cmd> ColorizerToggle <CR>", { noremap = true })
