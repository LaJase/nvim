return {
  {
    "TimUntersberger/neogit",
    cmd = { "Neogit" },
    keys = {
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
  { "folke/neoconf.nvim", enabled = false },
  { "folke/noice.nvim", enabled = false },
  { "stevearc/dressing.nvim", enabled = false },
}
