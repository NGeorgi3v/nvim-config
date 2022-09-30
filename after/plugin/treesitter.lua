local status_ok, configs = pcall(require, "nvim-treesitter.configs")
if not status_ok then
  return
end

require 'nvim-treesitter.install'.compilers = { vim.fn.getenv('CC'), "cc", "gcc", "clang", "cl", "zig" }

configs.setup {
  ensure_installed = {
    "tsx",
    "toml",
    "fish",
    "php",
    "json",
    "yaml",
    "swift",
    "css",
    "html",
    'javascript',
    "lua"
  },
  sync_install = false,
  ignore_install = { '' },
  matchup = {
    enable = true,
    disabled_virtual_host = true,
    disable = { '' }
  },
  highlight = {
    enable = true,
    disable = { 'markdown' }
  },
  autotag = {
    enable = true,
  },
  indent = {
    enable = true,
    disable = {}
  }
}
