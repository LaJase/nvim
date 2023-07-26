return {
  {
    "neovim/nvim-lspconfig",
    opts = {
      servers = {
        bashls = {},
        volar = {},
        pyright = {},
        -- https://github.com/neovim/nvim-lspconfig/blob/master/doc/server_configurations.md#omnisharp
        omnisharp = {
          organize_imports_on_format = true,
          enable_import_completion = true,
        },
      },
      setup = {
        omnisharp = function()
          require("lazyvim.util").on_attach(function(client, _)
            if client.name == "omnisharp" then
              -- https://github.com/OmniSharp/omnisharp-roslyn/issues/2483
              local function toSnakeCase(str)
                return string.gsub(str, "%s*[- ]%s*", "_")
              end

              local tokenModifiers = client.server_capabilities.semanticTokensProvider.legend.tokenModifiers
              for i, v in ipairs(tokenModifiers) do
                tokenModifiers[i] = toSnakeCase(v)
              end
              local tokenTypes = client.server_capabilities.semanticTokensProvider.legend.tokenTypes
              for i, v in ipairs(tokenTypes) do
                tokenTypes[i] = toSnakeCase(v)
              end
            end
          end)
        end,
      },
    },
  },
  {
    "williamboman/mason.nvim",
    opts = function(_, opts)
      table.insert(opts.ensure_installed, "autopep8") -- python linter
      table.insert(opts.ensure_installed, "isort")
      table.insert(opts.ensure_installed, "isort")
      table.insert(opts.ensure_installed, "goimports-reviser")
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
