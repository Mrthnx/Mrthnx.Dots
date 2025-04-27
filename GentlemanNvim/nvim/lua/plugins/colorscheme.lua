return {
  {
    "catppuccin/nvim",
    name = "catppuccin",
    lazy = false,
    opts = {
      transparent_background = true,
      flavour = "mocha",
    },
    integrations = {
      cmp = true,
      gitsigns = true,
      nvimtree = true,
      treesitter = true,
      notify = false,
      mini = {
        enabled = true,
        indentscope_color = "",
      },
      -- For more plugins integrations please scroll down (https://github.com/catppuccin/nvim#integrations)
    },
  },
  {
    "miikanissi/modus-themes.nvim",
    name = "modus",
    priority = 1000,
  },
  {
    "xiyaowong/transparent.nvim",
  },
  { "ellisonleao/gruvbox.nvim" },
  { "eddyekofo94/gruvbox-flat.nvim" },
  {
    "dgox16/oldworld.nvim",
    lazy = false,
    priority = 1000,
    opts = {
      variant = "oled",
      styles = {
        booleans = { italic = true, bold = true },
      },
      integrations = {
        hop = true,
        telescope = true,
        treesitter = true,
      },
    },
  },
  {
    "LazyVim/LazyVim",
    opts = {
      colorscheme = "gruvbox-flat",
    },
  },
}
