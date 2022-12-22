-- windows movement 
vim.keymap.set("n", "<C-h>", "<C-w>h", { desc = 'Go to left window'})
vim.keymap.set("n", "<C-j>", "<C-w>j", { desc = 'Go to down window'})
vim.keymap.set("n", "<C-k>", "<C-w>k", { desc = 'Go to up window'})
vim.keymap.set("n", "<C-l>", "<C-w>l", { desc = 'Go to right window'})

vim.keymap.set("n", "<leader>ws", "<C-w>s<C-w>j", { desc = 'Split horitonally the current window' })
vim.keymap.set("n", "<leader>wv", "<C-w>v<C-w>l", { desc = 'Split vertically the current window' })
vim.keymap.set("n", "<leader>wo", "<C-w>o", { desc = 'Make the current window the main one' })
vim.keymap.set("n", "<leader>wc", "<C-w>c", { desc = 'Close the current window' })

-- Stay in indent mode
vim.keymap.set("v", "<", "<gv", {})
vim.keymap.set("v", ">", ">gv", {})

vim.keymap.set("n", "<leader>x", "<cmd>!chmod +x %<CR>", { silent = true })

vim.keymap.set("n", "<leader>e", "<cmd>NvimTreeToggle<cr>")

-- lets try to use tab and vim fugitive
vim.keymap.set("n", "<leader>g", "<cmd>tabnew | Git | wincmd k | bd<cr>", { desc = 'Open in new tab the vim-fugitive view' })
