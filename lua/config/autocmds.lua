-- Autocmds are automatically loaded on the VeryLazy event
-- Default autocmds that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/autocmds.lua
--
-- Add any additional autocmds here
-- with `vim.api.nvim_create_autocmd`
--
-- Or remove existing autocmds by their group name (which is prefixed with `lazyvim_` for the defaults)
-- e.g. vim.api.nvim_del_augroup_by_name("lazyvim_wrap_spell")

-- Force json filetype for .json files even if snacks detects them as bigfile
vim.api.nvim_create_autocmd("FileType", {
  pattern = "bigfile",
  callback = function(ev)
    local fname = vim.api.nvim_buf_get_name(ev.buf)
    if fname:match("%.jsonc?$") then
      vim.bo[ev.buf].filetype = "json"
    end
  end,
})
