return {
  {
    "nvim-neotest/neotest",
    dependencies = {
      "Issafalcon/neotest-dotnet",
    },
    opts = function(_, opts)
      vim.list_extend(opts.adapters, {
        require("neotest-dotnet"),
      })
    end,
  },
}
