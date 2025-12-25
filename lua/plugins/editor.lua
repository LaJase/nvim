return {
  {
    "navarasu/onedark.nvim",
    lazy = false,
    priority = 1000,
    opts = {
      style = "darker",
    },
  },
  {
    "LazyVim/LazyVim",
    opts = {
      colorscheme = "onedark",
    },
  },

  {
    "folke/flash.nvim",
    event = "VeryLazy",
    ---@type Flash.Config
    opts = {},
    keys = {
      {
        "s",
        mode = { "n", "x", "o" },
        function()
          -- default options: exact mode, multi window, all directions, with a backdrop
          require("flash").jump({
            search = {
              mode = function(str)
                return "\\<" .. str
              end,
            },
          })
        end,
        desc = "Flash",
      },
    },
  },
  {
    "nvim-telescope/telescope.nvim",
    keys = {
      -- add a keymap to browse plugin files
      -- stylua: ignore
      {
        "<leader>fp",
        function() require("telescope.builtin").find_files({ cwd = require("lazy.core.config").options.root }) end,
        desc = "Find Plugin File",
      },
    },
  },
  {
    "NeogitOrg/neogit",
    cmd = { "Neogit" },
    keys = {
      -- stylua: ignore
      {
        "<C-p>", function()
          local builtin = require('telescope.builtin')
          local telescope_themes = require('telescope.themes')
          builtin.find_files(telescope_themes.get_dropdown({ previewer = false, }))
        end,
        { desc = "Find files in all project's files" },
      },
      -- stylua: ignore
      {
        "<leader>gn", function() vim.cmd("Neogit") end, desc = "Neogit (tab)",
      },
    },
    dependencies = { "sindrets/diffview.nvim" },
    opts = {
      signs = {
        -- { CLOSED, OPENED }
        section = { "", "" },
        item = { "", "" },
        hunk = { "", "" },
      },
      integrations = {
        diffview = true,
      },
    },
  },
  { "folke/neoconf.nvim", enabled = false },
  { "folke/noice.nvim", enabled = false },
  { "stevearc/dressing.nvim", enabled = false },
  { "akinsho/bufferline.nvim", opts = { options = { mode = "tabs" } } },
}
