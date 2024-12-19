local ks = vim.keymap.set
local opts = {noremap = true, silent = true}

ks('', '<Space>', '<Nop>', opts)
vim.g.mapleader = " "
vim.g.maplocalleader = " "

ks('n', 'Q', '<cmd>quitall<CR>')

ks('n', '<Esc>', '<cmd>noh<CR>', opts)

ks('n', '<Left>',   '<cmd>echoe "Use h"<CR>', opts)
ks('n', '<Right>',  '<cmd>echoe "Use l"<CR>', opts)
ks('n', '<Up>',     '<cmd>echoe "Use k"<CR>', opts)
ks('n', '<Down>',   '<cmd>echoe "Use j"<CR>', opts)

ks('i', '<Left>',   '<cmd>echoe "Use h"<CR>', opts)
ks('i', '<Right>',  '<cmd>echoe "Use l"<CR>', opts)
ks('i', '<Up>',     '<cmd>echoe "Use k"<CR>', opts)
ks('i', '<Down>',   '<cmd>echoe "Use j"<CR>', opts)

-- Split right and split down
ks('n', 'sr', '<cmd>set splitright<CR><cmd>vsplit<CR>', opts)
ks('n', 'sd', '<cmd>set splitbelow<CR><cmd>split<CR>', opts)

ks('n', '<C-h>', '<C-w>h', opts)
ks('n', '<C-l>', '<C-w>l', opts)
ks('n', '<C-j>', '<C-w>j', opts)
ks('n', '<C-k>', '<C-w>k', opts)

-- Format the whole file
ks('n', '<leader>f', 'gg=G', opts)

