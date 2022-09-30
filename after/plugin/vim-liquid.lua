local status, vim_liquid = pcall(require, 'vim-liquid')
if (not status) then return end

vim_liquid.setup {}
