return {
  {
    "bluz71/vim-moonfly-colors",
    lazy = false,
    priority = 1000,
    opts = {},
  },
  -- Configure LazyVim to use this colorscheme
  {
    "LazyVim/LazyVim",
    opts = {
      colorscheme = "moonfly",
    },
  },
}
