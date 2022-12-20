local loaded, onedark = pcall(require, 'onedark')
if not loaded then return end

require('onedark').setup {
    style = 'dark',
    transparent = true,
}

require('onedark').load()
