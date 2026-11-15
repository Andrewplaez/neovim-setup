return {
  {
    "folke/snacks.nvim",
    opts = {
      dashboard = {
        enabled = true,
        preset = {
          header = [[
╔══════════════════════════════════════════════════════╗
║                                                      ║
║   ██╗    ██╗███████╗██╗      ██████╗ ██████╗ ███████╗║
║   ██║    ██║██╔════╝██║     ██╔════╝ ██╔══██╗██╔════╝║
║   ██║ █╗ ██║█████╗  ██║     ██║  ███╗██████╔╝█████╗  ║
║   ██║███╗██║██╔══╝  ██║     ██║   ██║██╔══██╗██╔══╝  ║
║   ╚███╔███╔╝███████╗███████╗╚██████╔╝██║  ██║███████╗║
║    ╚══╝╚══╝ ╚══════╝╚══════╝ ╚═════╝ ╚═╝  ╚═╝╚══════╝║
║                                                      ║
║      ████████╗ ██████╗     ██╗  ██╗███████╗██╗     ██╗║
║      ╚══██╔══╝██╔═══██╗    ██║  ██║██╔════╝██║     ██║║
║         ██║   ██║   ██║    ███████║█████╗  ██║     ██║║
║         ██║   ██║   ██║    ██╔══██║██╔══╝  ██║     ╚═╝║
║         ██║   ╚██████╔╝    ██║  ██║███████╗███████╗██╗║
║         ╚═╝    ╚═════╝     ╚═╝  ╚═╝╚══════╝╚══════╝╚═╝║
║                                                      ║
╚══════════════════════════════════════════════════════╝
]],
          keys = {
            { icon = "󰈞 ", key = "f", desc = "Find file", action = ":lua Snacks.dashboard.pick('files')" },
            { icon = "󰈬 ", key = "g", desc = "Find text", action = ":lua Snacks.dashboard.pick('live_grep')" },
            { icon = "󰋚 ", key = "r", desc = "Recent files", action = ":lua Snacks.dashboard.pick('oldfiles')" },
            { icon = "󰏫 ", key = "n", desc = "New file", action = ":ene | startinsert" },
            { icon = "󰒲 ", key = "l", desc = "Lazy", action = ":Lazy" },
            { icon = "󰗼 ", key = "q", desc = "Quit", action = ":qa" },
          },
        },
        sections = {
          { section = "header", padding = 2 },
          { section = "keys", gap = 1, padding = 1 },
          {
            icon = "󰈔 ",
            title = "Recent files",
            section = "recent_files",
            indent = 2,
            padding = 2,
          },
          {
            icon = "󰊢 ",
            title = "Projects",
            section = "projects",
            indent = 2,
            padding = 1,
          },
          { section = "startup", padding = 1 },
        },
      },
    },
  },
}
