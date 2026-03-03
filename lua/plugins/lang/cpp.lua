return {
  -- Install codelldb debugger via Mason
  {
    "mason-org/mason.nvim",
    opts = {
      ensure_installed = {
        "codelldb",
      },
    },
  },

  -- DAP configuration for C/C++ using codelldb
  {
    "mfussenegger/nvim-dap",
    config = function()
      local dap = require("dap")

      dap.adapters.codelldb = {
        type = "server",
        port = "${port}",
        executable = {
          command = vim.fn.exepath("codelldb"),
          args = { "--port", "${port}" },
        },
      }

      dap.configurations.cpp = {
        {
          name = "Launch executable",
          type = "codelldb",
          request = "launch",
          program = function()
            return vim.fn.input("Executable: ", vim.fn.getcwd() .. "/build/", "file")
          end,
          cwd = "${workspaceFolder}",
          stopOnEntry = false,
        },
      }

      -- C shares the same config as C++
      dap.configurations.c = dap.configurations.cpp
    end,
  },
}
