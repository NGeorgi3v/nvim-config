local status, devicons = pcall(require, "devicons")
if (not status) then return end

icons.setup {
  override = {},
  default = true
}
