return {
  -- -- add gruvbox
  { "ellisonleao/gruvbox.nvim" },
  { "catppuccin/nvim", name = "catppuccin", priority = 1000 },
  { 'datsfilipe/vesper.nvim' },
  {'embark-theme/vim'},
  {"rebelot/kanagawa.nvim"},
  --
  -- Configure LazyVim to load gruvbox
  {
    "LazyVim/LazyVim",
    opts = {
      colorscheme = "kanagawa-dragon",
    },
  },
}
