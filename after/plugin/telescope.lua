local loaded, telescope = pcall(require, 'telescope')
if not loaded then return end

telescope.setup {}

local builtin = require('telescope.builtin')
local telescope_themes = require('telescope.themes')

vim.keymap.set("n", "<C-p>", function()
    builtin.find_files(telescope_themes.get_dropdown({ previewer = false }))
end, {desc = "Find files in all project's files"})

vim.keymap.set("n", "<leader>b", builtin.buffers, {desc = "[S]ind [B]uffer"})
vim.keymap.set('n', '<leader>ff', builtin.find_files, { desc = '[F]ind [F]iles' })
vim.keymap.set('n', '<leader>fd', builtin.diagnostics, { desc = '[F]ind [D]iagnostics' })
vim.keymap.set('n', '<leader>fh', builtin.help_tags, { desc = '[F]ind [H]elp' })
vim.keymap.set('n', '<leader>fw', builtin.grep_string, { desc = '[F]ind current [W]ord' })
vim.keymap.set('n', '<leader>fg', builtin.live_grep, { desc = '[F]ind by [G]rep' })
-- vim.keymap.set('n', '<leader>fs', builtin.resume, { desc = '[F]ind resume last [S]earch' })
vim.keymap.set('n', '<leader>fk', builtin.keymaps, { desc = '[F]ind [K]eymap' })

local exist, trouble_provider = pcall(require, 'trouble.providers.telescope')
if not exist then return end
vim.keymap.set("n", "<space>st", trouble_provider.open_with_trouble(), { desc = "[S]earch [T]roubles" })
