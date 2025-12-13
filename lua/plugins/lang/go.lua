return {
  {
    "mfussenegger/nvim-dap",
    config = function()
      local dap = require("dap")
      dap.adapters.go = function(callback)
        local port = 38697
        callback({ type = "server", host = "127.0.0.1", port = port })
      end

      dap.configurations.go = {
        {
          type = "go",
          name = "Debug File",
          request = "launch",
          program = "${file}",
        },
      }
    end,
  },
  {
    "mason-org/mason.nvim",
    opts = {
      ensure_installed = {
        "goimports",
        "gofumpt",
        "golangci-lint",
        "delve",
      },
    },
  },
  {
    "leoluz/nvim-dap-go",
    opts = {},
  },
}
