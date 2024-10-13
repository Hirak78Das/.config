return {
  -- Other plugins...

  -- Add toggleterm.nvim
  {
    "akinsho/toggleterm.nvim",
    version = "*", -- Ensures you're using the latest stable version
    config = function()
      require("toggleterm").setup({
        -- Optional custom configurations (examples below)
        -- open_mapping = [[<leader>t]], -- Shortcut to toggle terminal
        direction = "float", -- Terminal style: 'horizontal', 'vertical', 'float', 'tab'
        size = 20, -- Size of the terminal (for horizontal/vertical splits)
      })
      -- Set keybinding to open terminal only in Normal mode
      vim.api.nvim_set_keymap("n", "<leader>t", ":ToggleTerm<CR>", { noremap = true, silent = true })
    end,
  },
}
