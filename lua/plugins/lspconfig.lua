return {
  {
    "neovim/nvim-lspconfig",
    ---@class PluginLspOpts
    opts = {
      ---@type lspconfig.options
      servers = {
        bashls = {},
        dockerls = {},
        gopls = {},
        pyright = {},
        tsserver = {},
        volar = {},
      },
    },
  },
  {
    "williamboman/mason.nvim",
    opts = function(_, opts)
      table.insert(opts.ensure_installed, "autopep8") -- python linter
      table.insert(opts.ensure_installed, "isort")
    end,
  },
  { import = "lazyvim.plugins.extras.lang.typescript" },

  {
    "jose-elias-alvarez/null-ls.nvim",
    opts = function(_, opts)
      local nls = require("null-ls")
      table.insert(opts.sources, nls.builtins.formatting.isort)
      table.insert(
        opts.sources,
        nls.builtins.formatting.autopep8.with({
          extra_args = {
            "--max-line-length",
            "120",
          },
        })
      )
    end,
  },
}
