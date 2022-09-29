local status, ts = pcall(require, "nvim-treesitter.configs")
if (not status) then return end

ts.setup {
  highlight = {
    enable = true,
    disable = {},
  },
  indent = {
    enable = true,
    disbale = {},
  },
  ensure_installed = {
    "tsx",
    "typescript",
    "javascript",
    "java",
    "json",
    "yaml",
    "css",
    "html",
    "lua",
    "scss",
  },
  auto_install = true,
  autotag = {
    enable = true,
  },
}

local parser_config = require "nvim-treesitter.parsers".get_parser_configs()
parser_config.tsx.filetype_to_parsername = { "javascript", "typescript.tsx" }
