-- move line up-down

local opts = { noremap = true, silent = true }

return {
  "fedepujol/move.nvim",
  config = function()
    require("move").setup() -- Plugin setup

    -- Normal-mode commands
    vim.keymap.set("n", "<A-j>", ":MoveLine(1)<CR>", opts) -- Move line down
    vim.keymap.set("n", "<A-k>", ":MoveLine(-1)<CR>", opts) -- Move line up
    vim.keymap.set("n", "<A-h>", ":MoveHChar(-1)<CR>", opts) -- Move character left
    vim.keymap.set("n", "<A-l>", ":MoveHChar(1)<CR>", opts) -- Move character right
    vim.keymap.set("n", "<leader>wf", ":MoveWord(1)<CR>", opts) -- Move word right
    vim.keymap.set("n", "<leader>wb", ":MoveWord(-1)<CR>", opts) -- Move word left

    -- Visual-mode commands
    vim.keymap.set("v", "<A-j>", ":MoveBlock(1)<CR>", opts) -- Move block down
    vim.keymap.set("v", "<A-k>", ":MoveBlock(-1)<CR>", opts) -- Move block up
    vim.keymap.set("v", "<A-h>", ":MoveHBlock(-1)<CR>", opts) -- Move block left
    vim.keymap.set("v", "<A-l>", ":MoveHBlock(1)<CR>", opts) -- Move block right
  end,
}
