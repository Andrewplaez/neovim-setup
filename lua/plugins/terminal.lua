return {
  {
    "folke/snacks.nvim",
    keys = {
      {
        "<leader>ft",
        function()
          Snacks.terminal()
        end,
        desc = "Terminal",
      },
    },
  },
}
