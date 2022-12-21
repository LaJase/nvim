local loaded, telescope = pcall(require, 'telescope')
if not loaded then return end

telescope.setup {}

local builtin = require('telescope.builtin')
local telescope_themes = require('telescope.themes')

vim.keymap.set("n", "<C-p>", function()
    builtin.find_files(telescope_themes.get_dropdown({ previewer = false }))
end, {desc = "Find files in all project's files"})

vim.keymap.set("n", "<leader>sb", function()
    builtin.buffers(telescope_themes.get_dropdown({ previewer = false }))
end, {desc = "[S]ind [B]uffer"})

vim.keymap.set('n', '<leader>sf', builtin.find_files, { desc = '[S]earch [F]iles' })
vim.keymap.set('n', '<leader>sd', builtin.diagnostics, { desc = '[S]earch [D]iagnostics' })
vim.keymap.set('n', '<leader>sh', builtin.help_tags, { desc = '[S]earch [H]elp' })
vim.keymap.set('n', '<leader>sw', builtin.grep_string, { desc = '[S]earch current [W]ord' })
vim.keymap.set('n', '<leader>sg', builtin.live_grep, { desc = '[S]earch by [G]rep' })
vim.keymap.set('n', '<leader>ss', builtin.resume, { desc = '[S]earch resume last [S]earch' })
vim.keymap.set('n', '<leader>sk', builtin.keymaps, { desc = '[S]earch [K]eymap' })

local exist, trouble_provider = pcall(require, 'trouble.providers.telescope')
if not exist then return end
vim.keymap.set("n", "<space>st", trouble_provider.open_with_trouble(), { desc = "[S]earch [T]roubles" })
