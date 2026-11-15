return {
  {
    "nvim-treesitter/nvim-treesitter",
    opts = function(_, opts)
      opts.ensure_installed = opts.ensure_installed or {}
      local parsers = {
        "bash",
        "c",
        "cpp",
        "json",
        "lua",
        "luadoc",
        "markdown",
        "markdown_inline",
        "python",
        "query",
        "rust",
        "vim",
        "vimdoc",
        "yaml",
      }
      for _, parser in ipairs(parsers) do
        if not vim.tbl_contains(opts.ensure_installed, parser) then
          table.insert(opts.ensure_installed, parser)
        end
      end
    end,
  },
  {
    "neovim/nvim-lspconfig",
    opts = {
      servers = {
        clangd = {},
        lua_ls = {},
        pyright = {},
        rust_analyzer = {},
      },
    },
  },
  {
    "mason.nvim",
    opts = {
      ensure_installed = {
        "clangd",
        "lua-language-server",
        "pyright",
        "rust-analyzer",
      },
    },
  },
}
