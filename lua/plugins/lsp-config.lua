return {
  {
    "neovim/nvim-lspconfig",
    opts = {
      servers = {
        bashls = {},
        gopls = {
          settings = {
            gopls = {
              hints = {
                parameterNames = false,
                parameterTypes = false,
                assignVariableTypes = false,
                compositeLiteralFields = false,
              },
            },
          },
        },
      },
    },
  },
}
