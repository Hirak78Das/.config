return {
  -- Syntax highlighting with Treesitter
  {
    "nvim-treesitter/nvim-treesitter",
    build = ":TSUpdate", -- Auto update parsers
    config = function()
      require("nvim-treesitter.configs").setup({
        ensure_installed = { "java", "lua", "bash", "python" }, -- Add your languages here
        highlight = {
          enable = true, -- Enable syntax highlighting
        },
        indent = {
          enable = true, -- Enable Treesitter-based indentation
        },
      })
    end,
  },
}
