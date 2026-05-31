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
  "=='    _-'                         N E O V I M                         `-_  `==",
  "\\   _-'                                                                   `-_  /",
  " `''                                                                          ``",
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
