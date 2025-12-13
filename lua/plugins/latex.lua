return {
  -- Plugin principal LaTeX
  {
    "lervag/vimtex",
    config = function()
      -- Compilation automatique
      vim.g.vimtex_compiler_method = "latexmk"
      vim.g.vimtex_compiler_latexmk = {
        continuous = 1, -- compilation continue
        options = {
          "-pdf",
          "-interaction=nonstopmode",
          "-synctex=1",
        },
      }

      -- Viewer PDF
      -- Linux
      vim.g.vimtex_view_method = "zathura"
      -- macOS: vim.g.vimtex_view_method = 'skim'; vim.g.vimtex_view_skim_sync = 1
      -- Windows: vim.g.vimtex_view_method = 'SumatraPDF'

      -- Leader mappings VimTeX
      vim.api.nvim_set_keymap("n", "<leader>ll", ":VimtexCompile<CR>", { noremap = true, silent = true })
      vim.api.nvim_set_keymap("n", "<leader>lv", ":VimtexView<CR>", { noremap = true, silent = true })
      vim.api.nvim_set_keymap("n", "<leader>lc", ":VimtexCompileOutput<CR>", { noremap = true, silent = true })
    end,
  },
  {
    "stevearc/conform.nvim",
    opts = {
      formatters_by_ft = { tex = { "latexindent" } },
    },
  },
}
