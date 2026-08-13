require('options')
require('plugins')
require('keymaps')
vim.cmd [[colorscheme moonfly]]
require("mason-lspconfig").setup()
require('mini.icons').setup()
require("oil").setup()
require('blink.cmp').setup()
-- init.lua

local alpha = require("alpha")
local dashboard = require("alpha.themes.dashboard")

-- Header
vim.api.nvim_set_hl(0, "AlphaHeader", { fg = "#7c3aed" })

dashboard.section.header.val = {
  "=================     ===============     ===============   ========  ========",
  "\\\\ . . . . . . .\\\\   //. . . . . . .\\\\   //. . . . . . .\\\\  \\\\. . .\\\\// . . //",
  "||. . ._____. . .|| ||. . ._____. . .|| ||. . ._____. . .|| || . . .\\/ . . .||",
  "|| . .||   ||. . || || . .||   ||. . || || . .||   ||. . || ||. . . . . . . ||",
  "||. . ||   || . .|| ||. . ||   || . .|| ||. . ||   || . .|| || . | . . . . .||",
  "|| . .||   ||. _-|| ||-_ .||   ||. . || || . .||   ||. _-|| ||-_.|\\ . . . . ||",
  "||. . ||   ||-'  || ||  `-||   || . .|| ||. . ||   ||-'  || ||  `|\\_ . .|. .||",
  "|| . _||   ||    || ||    ||   ||_ . || || . _||   ||    || ||   |\\ `-_/| . ||",
  "||_-' ||  .|/    || ||    \\|.  || `-_|| ||_-' ||  .|/    || ||   | \\  / |-_.||",
  "||    ||_-'      || ||      `-_||    || ||    ||_-'      || ||   | \\  / |  `||",
  "||    `'         || ||         `'    || ||    `'         || ||   | \\  / |   ||",
  "||            .===' `===.         .==='.`===.         .===' /==. |  \\/  |   ||",
  "||         .=='   \\_|-_ `===. .==='   _|_   `===. .===' _-|/   `==  \\/  |   ||",
  "||      .=='    _-'    `-_  `='    _-'   `-_    `='  _-'   `-_  /|  \\/  |   ||",
  "||   .=='    _-'          `-__\\._-'         `-_./__-'         `' |. /|  |   ||",
  "||.=='    _-'                                                     `' |  /==.||",
  "=='    _-'                         N E O V I M                         `-_ `==",
  "\\   _-'                                                                   `- /",
  " `''                                                                        ``  ",
}

dashboard.section.header.opts = {
  position = "center",
  hl = "AlphaHeader",
}

-- Buttons
dashboard.section.buttons.val = {
  dashboard.button("f", "  Find file",  ":Telescope find_files<CR>"),
  dashboard.button("e", "  New file",   ":ene<CR>"),
  dashboard.button("r", "  Recent",     ":Telescope oldfiles<CR>"),
  dashboard.button("q", "  Quit",       ":qa<CR>"),
}

-- Margin (correct nesting)
dashboard.config.opts.noautocmd = true

alpha.setup(dashboard.config)

vim.lsp.config("lua_ls", {})
vim.lsp.config("clangd", {
  cmd = { "clangd", "--background-index" },
})

vim.lsp.enable({ "lua_ls", "clangd" })
vim.api.nvim_create_autocmd('LspAttach', {
  callback = function(args)
    local bufnr = args.buf
    local opts = { buffer = bufnr }
    
    -- Hover documentation for symbol under cursor
    vim.keymap.set('n', 'K', vim.lsp.buf.hover, opts)
    
    -- Signature help for function parameters (normal and insert mode)
    vim.keymap.set('n', '<C-k>', vim.lsp.buf.signature_help, opts)
    vim.keymap.set('i', '<C-k>', vim.lsp.buf.signature_help, opts)
  end,
})
