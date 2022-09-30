local status, packer = pcall(require, 'packer')
if (not status) then
  print('Packer is not installed')
  return
end

vim.cmd [[packadd packer.nvim]]

packer.startup(function(use)

  use 'wbthomason/packer.nvim' -- Packer for installing plugins
  use 'martinsione/darkplus.nvim' -- VSCode like theme
  use 'kyazdani42/nvim-web-devicons' -- File icons
  use 'glepnir/lspsaga.nvim' -- LSP UI's
  use 'L3MON4D3/LuaSnip' -- Snippet
  use "rafamadriz/friendly-snippets" -- a bunch of snippets to use
  use 'nvim-lualine/lualine.nvim' -- Statusline
  use 'williamboman/mason.nvim' -- LSP language server
  use 'onsails/lspkind-nvim' -- vscode-like pictograms
  use 'hrsh7th/cmp-buffer' -- nvim-cmp source for buffer words
  use 'hrsh7th/cmp-nvim-lsp' -- nvim-cmp source for neovim's build in LSP
  use "saadparwaiz1/cmp_luasnip" -- snippet completions
  use 'hrsh7th/nvim-cmp' -- Completion
  use 'neovim/nvim-lspconfig' -- LSP
  -- Syntac highlight
  use {
    'nvim-treesitter/nvim-treesitter',
    run = ':TSUpdate'
  }
  use 'mhartington/formatter.nvim' -- Formatter for Prettier
  use 'windwp/nvim-autopairs' -- Autoclose brackets and such
  use 'windwp/nvim-ts-autotag' -- Autoclose html tags
  use 'nvim-lua/plenary.nvim' -- Common utilities
  use 'nvim-telescope/telescope.nvim'
  use 'nvim-telescope/telescope-file-browser.nvim'
  use 'moll/vim-bbye' -- Closing tabs
  use 'akinsho/bufferline.nvim' -- Buffer tabs at top
  use 'norcalli/nvim-colorizer.lua' -- CSS Color highlight
  use "kyazdani42/nvim-tree.lua" -- NVIM tree file explorer
  use "terrortylor/nvim-comment" -- gc gcc comment plugin
  use "mg979/vim-visual-multi" -- Ctrl+N Multicursor
  use "tpope/vim-liquid" -- Liquid syntax highlight 

  use 'lewis6991/gitsigns.nvim'
end)

require("mason").setup({
  ui = {
    icons = {
      package_installed = "✓",
      package_pending = "➜",
      package_uninstalled = "✗"
    }
  }
})

