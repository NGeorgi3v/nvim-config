local status, nvim_comment = pcall(require, "nvim_comment")
if (not status) then return end

nvim_comment.setup(
  {
    marker_padding = true,
    comment_empty = true,
    comment_empty_trim_whitespace = true,
    create_mappings = true,
    line_mapping = 'gcc',
    operator_mapping = 'gc',
    hook = nil
  }
)
