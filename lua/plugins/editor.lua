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
                done = {
                  icon = "",
                },
                pending = {
                  icon = "-",
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
  {
    "nvim-neo-tree/neo-tree.nvim",
    opts = {
      source_selector = {
        winbar = true,
      },
      default_component_configs = {
        git_status = {
          symbols = {
            -- Change type
            added = "", -- or "✚", but this is redundant info if you use git_status_colors on the name
            modified = "", -- or "", but this is redundant info if you use git_status_colors on the name
            deleted = "", -- this can only be used in the git_status source
            renamed = "", -- this can only be used in the git_status source
            -- Status type
            untracked = "",
            ignored = "",
            unstaged = "",
            staged = "",
            conflict = "",
          },
        },
      },
    },
  },
}
