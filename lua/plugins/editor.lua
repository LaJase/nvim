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
    "folke/snacks.nvim",
    opts = {
      zen = { enabled = false },
    },
    keys = {
      { "<leader>uz", false },
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
    "NeogitOrg/neogit",
    cmd = { "Neogit" },
    keys = {
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
