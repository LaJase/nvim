vim.opt.mouse = 'a'
vim.opt.termguicolors = true
vim.opt.fileencoding = 'utf-8'

vim.opt.hlsearch = false
vim.opt.incsearch = true
vim.opt.ignorecase = true
vim.opt.smartcase = true

vim.opt.cursorline = false

vim.opt.signcolumn = 'yes'

vim.opt.number = true
vim.opt.relativenumber = true

vim.opt.scrolloff = 8

vim.opt.tabstop = 4
vim.opt.softtabstop = 4
vim.opt.shiftwidth = 4
vim.opt.expandtab = true

vim.opt.swapfile = false  -- creates a swapfile
vim.opt.splitbelow = true -- force all horizontal splits to go below current window
vim.opt.splitright = true -- force all vertical splits to go to the right of current window

vim.opt.wrap = false

vim.opt.updatetime = 300

vim.g.mapleader = ' '
vim.g.maplocalleader = ' '
vim.opt.wrap = false -- display lines as one long line

-- disable netrw
vim.g.loaded_netrw = 1
vim.g.loaded_netrwPlugin = 1
-- Managing trailing space
vim.opt.listchars:append { trail = "•" }
vim.opt.list = true

vim.opt.clipboard = 'unnamedplus'

vim.opt.textwidth = 120

vim.opt.fillchars:append {
    eob = ' ',
    fold = ' ',
    foldopen = '',
    foldclose = '',
    foldsep = ' ',
}
