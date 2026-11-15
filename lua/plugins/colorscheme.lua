return {
  {
    "catppuccin/nvim",
    name = "catppuccin",
    priority = 1000,
    opts = {
      flavour = "mocha",
      transparent_background = true,
      float = {
        transparent = true,
        solid = false,
      },
      auto_integrations = true,
      custom_highlights = function(colors)
        return {
          FloatBorder = { fg = colors.lavender, bg = "NONE" },
          WinSeparator = { fg = colors.surface1, bg = "NONE" },
          CursorLineNr = { fg = colors.sky, style = { "bold" } },
          TelescopeBorder = { fg = colors.lavender, bg = "NONE" },
        }
      end,
    },
  },
  {
    "LazyVim/LazyVim",
    opts = {
      colorscheme = "catppuccin",
    },
  },
}
