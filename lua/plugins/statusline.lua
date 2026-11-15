return {
  {
    "nvim-lualine/lualine.nvim",
    opts = {
      options = {
        theme = "catppuccin",
        globalstatus = true,
        component_separators = {
          left = "│",
          right = "│",
        },
        section_separators = {
          left = "",
          right = "",
        },
        globalstatus = true,
      },
      sections = {
        lualine_a = { { "mode", icon = "󰘧" } },
        lualine_b = { "branch", "diff", "diagnostics" },
        lualine_c = { { "filename", path = 1, symbols = { modified = " ●", readonly = " " } } },
        lualine_x = { "encoding", "fileformat", "filetype" },
        lualine_y = { "progress" },
        lualine_z = { "location" },
      },
    },
  },
}
