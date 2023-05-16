return {
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
    "TimUntersberger/neogit",
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
      integrations = {
        diffview = true,
      },
    },
  },
  { "mini.indentscope", enabled = false },
  { "folke/neoconf.nvim", enabled = false },
  { "folke/noice.nvim", enabled = false },
  { "stevearc/dressing.nvim", enabled = false },
  { "akinsho/bufferline.nvim", opts = { options = { mode = "tabs" } } },

  -- Neorg
  {
    "nvim-neorg/neorg",
    build = ":Neorg sync-parsers",
    -- stylua: ignore
    keys = {
      { "<leader>ni", "<cmd>Neorg index<cr>", desc = "Open neorg" },
      { "<leader>nr", "<cmd>Neorg return<cr>", desc = "Quit neorg" },
    },
    opts = {
      load = {
        ["core.defaults"] = {},
        ["core.completion"] = {
          config = {
            engine = "nvim-cmp",
          },
        },
        ["core.concealer"] = {
          config = {
            folds = false,
            icons = {
              todo = {
                undone = {
                  icon = " ",
                },
              },
            },
          },
        },
        ["core.dirman"] = {
          config = {
            workspaces = {
              work = "~/notes/work",
              home = "~/notes/home",
            },
            default_workspace = "work",
            index = "index.norg",
          },
        },
      },
    },
    dependencies = { { "nvim-lua/plenary.nvim" } },
  },
}
