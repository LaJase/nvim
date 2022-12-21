local loaded, treesitter = pcall (require, "nvim-treesitter.configs")
if not loaded then return end

treesitter.setup {
  -- Add languages to be installed here that you want installed for treesitter
  ensure_installed = { 
    'c',
    'cpp',
    'lua',
    'python',
    'help',
    'perl',
    'json',
    'yaml',
    'css',
    'html',
    'javascript',
    'dockerfile',
    'markdown',
  },
  highlight = { enable = true },
  indent = { enable = true, disable = { 'python' } },
  incremental_selection = {
    enable = true,
    keymaps = {
      init_selection = '<c-space>',
      node_incremental = '<c-space>',
      scope_incremental = '<c-s>',
      node_decremental = '<c-backspace>',
    },
  },
}
