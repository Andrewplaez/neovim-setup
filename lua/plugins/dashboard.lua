return {
  {
    "folke/snacks.nvim",
    opts = function(_, opts)
      local quotes = {
        "The abyss does not answer. It waits.",
        "Become difficult to predict.",
        "Nothing grows in the comfort of certainty.",
        "The only way out is through.",
        "Discipline is choosing what you want most.",
        "In the dark, learn to see.",
        "Make something worth fearing.",
        "There is no map for the unmade.",
        "A quiet mind. A ruthless standard.",
        "The world yields to those who persist.",
      }

      opts.dashboard = {
        enabled = true,
        preset = {
          header = [[
█   █ █████ █      ████  ███  █   █ █████
█   █ █     █     █     █   █ ██ ██ █    
█   █ █     █     █     █   █ █ █ █ █    
█ █ █ ████  █     █     █   █ █ █ █ ████ 
█ █ █ █     █     █     █   █ █   █ █    
██ ██ █     █     █     █   █ █   █ █    
█   █ █████ █████  ████  ███  █   █ █████

█████  ███      █   █ █████ █     █    
  █   █   █     █   █ █     █     █    
  █   █   █     █   █ █     █     █    
  █   █   █     █████ ████  █     █    
  █   █   █     █   █ █     █     █    
  █   █   █     █   █ █     █     █    
  █    ███      █   █ █████ █████ █████
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
      }
      opts.dashboard.preset.header = opts.dashboard.preset.header .. "\n\n" .. quotes[math.random(#quotes)]

      return opts
    end,
  },
}
