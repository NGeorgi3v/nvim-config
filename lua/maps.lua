-- Set leader key
vim.g.mapleader = ','
vim.g.maplocalleader = ','

local keymap = vim.keymap
local opts = { noremap = true, silent = true }

keymap.set('n', 'x', '"_x')

-- Increment/decrement
keymap.set('n', '+', '<C-a>')
keymap.set('n', '-', '<C-x>')

-- Select all
keymap.set('n', '<C-a>', 'gg<S-v>G', opts)

-- Save with root permission (not working for now)
--vim.api.nvim_create_user_command('W', 'w !sudo tee > /dev/null %', {})

-- New tab
keymap.set('n', 'te', ':tabedit<Return>')

-- Split window
keymap.set('n', 'ss', ':split<Return><C-w>w')
keymap.set('n', 'sv', ':vsplit<Return><C-w>w')
-- Move window
keymap.set('n', '<Space>', '<C-w>w')
keymap.set('', 'sh', '<C-w>h')
keymap.set('', 'sk', '<C-w>k')
keymap.set('', 'sj', '<C-w>j')
keymap.set('', 'sl', '<C-w>l')

-- Resize window
keymap.set('n', '<C-w><left>', '<C-w><')
keymap.set('n', '<C-w><right>', '<C-w>>')
keymap.set('n', '<C-w><up>', '<C-w>+')
keymap.set('n', '<C-w><down>', '<C-w>-')

-- Close buffer
keymap.set('n', 'tw', ':Bdelete<Return>', opts)
keymap.set('n', 'tr', ':Bdelete!<Return>', opts)

-- NVIM tree toggle
keymap.set('n', ';n', ':NvimTreeToggle<CR>', opts)

-- Move lines up and down like in VSCode
keymap.set('n', '<A-j>', ':m.+1<CR>==', opts)
keymap.set('n', '<A-k>', ':m.-2<CR>==', opts)
keymap.set('v', '<A-j>', ":m'>+1<CR>gv=gv", opts)
keymap.set('v', '<A-k>', ":m'<-2<CR>gv=gv", opts)

