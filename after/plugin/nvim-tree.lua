-- following options are the default
-- each of these are documented in `:help nvim-tree.OPTION_NAME`

local status_ok, nvim_tree = pcall(require, "nvim-tree")
if not status_ok then
  return
end

local config_status_ok, nvim_tree_config = pcall(require, "nvim-tree.config")
if not config_status_ok then
  return
end

nvim_tree.setup {
  renderer = {
    group_empty = true,
    icons = {
      glyphs = {
        git = {
          unstaged = "",
          staged = "✓",
          untracked = "U",
          ignored = "◌",
        },
      },
    },
  },
  hijack_cursor = true,
  update_cwd = false,
  diagnostics = {
    enable = true,
    icons = {
      hint = "",
      info = "",
      warning = "",
      error = "",
    },
  },
  update_focused_file = {
    enable = true,
    update_cwd = false,
    ignore_list = {},
  },
  git = {
    enable = true,
    ignore = true,
    timeout = 500,
  },
  filters = {
    dotfiles = false,
    custom = { ".vscode" },
  },
  view = {
    width = 55,
    hide_root_folder = false,
    side = "left",
    number = false,
    relativenumber = false,
  },
}
