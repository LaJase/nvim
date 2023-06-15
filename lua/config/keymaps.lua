-- Keymaps are automatically loaded on the VeryLazy event
-- Default keymaps that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/keymaps.lua
-- Add any additional keymaps here

vim.keymap.set("n", "<leader>zi", "<C-w>_<C-w>|", { desc = "Zoom In" })
vim.keymap.set("n", "<leader>zo", "<C-w>=", { desc = "Zoom Out" })
