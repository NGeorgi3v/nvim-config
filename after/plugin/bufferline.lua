local status_ok, bufferline = pcall(require, "bufferline")
if not status_ok then
  return
end

bufferline.setup {
  options = {
    numbers = "none",
    close_command = "Bdelete! %d",
    indicator = {
      icon = "│",
    },
    buffer_close_icon = "",
    modified_icon = "●",
    close_icon = "",
    left_trunc_marker = "",
    right_trunc_marker = "",
    max_name_length = 31,
    max_prefix_length = 31,
    tab_size = 22,
    diagnostics = false,
    diagnostics_update_in_insert = false,
    offsets = { { filetype = "NvimTree", text = "", padding = 2 } },
    show_buffer_icons = true,
    show_buffer_close_icons = true,
    show_close_icon = true,
    show_tab_indicators = true,
    persist_buffer_sort = true,
    separator_style = "thin",
    enforce_regular_tabs = true,
    always_show_bufferline = true,
  },
}

vim.keymap.set('n', '<C-l>', '<Cmd>BufferLineCycleNext<CR>')
vim.keymap.set('n', '<C-h>', '<Cmd>BufferLineCyclePrev<CR>')
