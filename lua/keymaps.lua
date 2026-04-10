vim.g.mapleader = ' '

vim.keymap.set('n', '<leader>ww', '<cmd>write<cr>', {desc = 'Save'})
vim.keymap.set('n', '<leader>wq', ':wq<CR>', {desc = 'Save and quit'})
vim.keymap.set('n', '<leader>e', '<cmd>Oil<cr>', {desc = 'Open parent directory'})
vim.keymap.set('n', '<Space>', '<Nop>', { silent = true })

local builtin = require('telescope.builtin')
vim.keymap.set('n', '<leader>ff', builtin.find_files, {desc = 'Find files'})
vim.keymap.set('n', '<leader>fg', builtin.live_grep, {desc = 'Live grep'})
vim.keymap.set('n', '<leader>fb', builtin.buffers, {desc = 'Buffers'})
vim.keymap.set('n', '<leader>fh', builtin.help_tags, {desc = 'Help tags'})
