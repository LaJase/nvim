local status, bufferline = pcall(require, "bufferline")
if (not status) then return end

bufferline.setup({
  options = {
    mode = "buffers",
    show_buffer_close_icons = true,
    show_close_icon = false,
    color_icons = true,
    diagnostics = 'nvim_lsp',
    hijack_netrw = true,
    offsets = {
      { filetype = "NvimTree", text = "Explorer", padding = 1 }
    },
  },
})

