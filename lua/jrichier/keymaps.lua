-- windows movement
vim.keymap.set("n", "<C-h>", "<C-w>h", { desc = 'Go to left window' })
vim.keymap.set("n", "<C-j>", "<C-w>j", { desc = 'Go to down window' })
vim.keymap.set("n", "<C-k>", "<C-w>k", { desc = 'Go to up window' })
vim.keymap.set("n", "<C-l>", "<C-w>l", { desc = 'Go to right window' })

vim.keymap.set("n", "<leader>ws", "<C-w>s<C-w>j", { desc = 'Split horitonally the current window' })
vim.keymap.set("n", "<leader>wv", "<C-w>v<C-w>l", { desc = 'Split vertically the current window' })
vim.keymap.set("n", "<leader>wo", "<C-w>o", { desc = 'Make the current window the main one' })
vim.keymap.set("n", "<leader>wc", "<C-w>c", { desc = 'Close the current window' })

vim.keymap.set("n", "<C-d>", "<C-d>zz")
vim.keymap.set("n", "<C-u>", "<C-u>zz")
vim.keymap.set("n", "n", "nzzzv")
vim.keymap.set("n", "N", "Nzzzv")

-- Stay in visual mode
vim.keymap.set("v", "<", "<gv", {})
vim.keymap.set("v", ">", ">gv", {})

vim.keymap.set("n", "<leader>x", "<cmd>!chmod +x %<CR>", { silent = true })

vim.keymap.set("n", "<leader>e", "<cmd>NvimTreeToggle<cr>")

-- lets try to use tab and vim fugitive
vim.keymap.set("n", "<leader>gs", "<cmd>tabnew Git | Git | wincmd k | bd<cr>", { desc = '[G]it [Status] (vim fugitive)' })
vim.keymap.set("n", "<leader>gp", "<cmd>G pull<cr>", { desc = '[G]it [P]ull' })
vim.keymap.set("n", "<leader>gP", "<cmd>G push<cr>", { desc = '[G]it [P]ush' })

-- move lines or block
vim.keymap.set("n", "<A-j>", ":m .+1<CR>==", {})
vim.keymap.set("n", "<A-k>", ":m .-2<CR>==", {})

vim.keymap.set("i", "<A-j>", "<Esc>:m .+1<CR>==gi", {})
vim.keymap.set("i", "<A-k>", "<Esc>:m .-2<CR>==gi", {})

vim.keymap.set("v", "<A-j>", ":m '>+1<CR>gv=gv", {})
vim.keymap.set("v", "<A-k>", ":m '<-2<CR>gv=gv", {})


-- trigger markdownpreview
vim.keymap.set("n", "<leader>mp", "<cmd>MarkdownPreview<cr>", { desc = 'Open [M]arkdown[P]review]' })
vim.keymap.set("n", "<leader>ms", "<cmd>MarkdownPreviewStop<cr>", { desc = 'Stop [M]arkdown[P]review]' })

--Neorg mapping
vim.keymap.set("n", "<leader>ni", "<cmd>Neorg index<cr>", { desc = '[N]eorg [I]ndex' })
vim.keymap.set("n", "<leader>nr", "<cmd>Neorg return<cr>", { desc = '[N]eorg [R]eturn' })
