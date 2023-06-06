return {
  {
    "folke/tokyonight.nvim",
    lazy = true,
    opts = {
      style = "night",
    },
  },
  { "catppuccin/nvim", name = "catppuccin", enabled = false },

  {
    "nvim-tree/nvim-web-devicons",
    opts = {
      override_by_extension = {
        ["containerfile"] = {
          icon = "",
          color = "#458ee6",
          cterm_color = "68",
          name = "Dockerfile",
        },
        ["docker-compose.yml"] = {
          icon = "",
          color = "#458ee6",
          cterm_color = "68",
          name = "Dockerfile",
        },
        ["docker-compose.yaml"] = {
          icon = "",
          color = "#458ee6",
          cterm_color = "68",
          name = "Dockerfile",
        },
        [".dockerignore"] = {
          icon = "",
          color = "#458ee6",
          cterm_color = "68",
          name = "Dockerfile",
        },
        ["dockerfile"] = {
          icon = "",
          color = "#458ee6",
          cterm_color = "68",
          name = "Dockerfile",
        },
        ["cs"] = {
          icon = "󰌛",
          color = "#596706",
          cterm_color = "58",
          name = "Cs",
        },
      },
    },
  },
}
