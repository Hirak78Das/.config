return {
  -- Other plugins...

  -- Add toggleterm.nvim
  {
    "akinsho/toggleterm.nvim",
    version = "*", -- Ensures you're using the latest stable version
    config = function()
      require("toggleterm").setup({
        -- Optional custom configurations (examples below)
        open_mapping = [[<leader>t]], -- Shortcut to toggle terminal
        direction = "float", -- Terminal style: 'horizontal', 'vertical', 'float', 'tab'
        size = 20, -- Size of the terminal (for horizontal/vertical splits)
      })
    end,
  },
}
