return {
  {
    "stevearc/conform.nvim",
    opts = function(_, opts)
      opts.formatters_by_ft = opts.formatters_by_ft or {}
      opts.formatters_by_ft.markdown = { "prettier" }
      opts.formatters_by_ft["markdown.mdx"] = { "prettier" }
      opts.formatters_by_ft.json = { "prettier" }
      opts.formatters_by_ft.jsonc = { "prettier" }
      opts.formatters = opts.formatters or {}
      opts.formatters.shfmt = {
        prepend_args = { "-kp" },
      }
      opts.formatters.prettier = {
        prepend_args = { "--prose-wrap", "always", "--print-width", "120" },
      }
    end,
  },
}
