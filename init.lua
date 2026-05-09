require('options')
require('plugins')
require('keymaps')
vim.cmd [[colorscheme moonfly]]
require("mason-lspconfig").setup()
require('mini.icons').setup()
require("oil").setup()
require('blink.cmp').setup()
