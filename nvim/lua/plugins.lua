local lazypath = vim.fn.stdpath("data") .. "/lazy/lazy.nvim"
if not (vim.uv or vim.loop).fs_stat(lazypath) then
  vim.fn.system({
    "git",
    "clone",
    "--filter=blob:none",
    "https://github.com/folke/lazy.nvim.git",
    "--branch=stable", -- latest stable release
    lazypath,
  })
end
vim.opt.rtp:prepend(lazypath)

require("lazy").setup({
    -- "folke/tokyonight.nvim",
    "tanvirtin/monokai.nvim",

     -- Syntax highlighting with Treesitter
    {
        'nvim-treesitter/nvim-treesitter',
        build = ':TSUpdate',  -- Auto update parsers
        config = function()
            require'nvim-treesitter.configs'.setup {
                ensure_installed = { "java", "lua", "bash", "python" },  -- Add your languages here
                highlight = {
                    enable = true,  -- Enable syntax highlighting
                },
                indent = {
                    enable = true,  -- Enable Treesitter-based indentation
                },
            }
        end,
    },

    -- Vscode-like pictograms
	{
		"onsails/lspkind.nvim",
		event = { "VimEnter" },
	},
	-- Auto-completion engine
	{
		"hrsh7th/nvim-cmp",
		dependencies = {
			"lspkind.nvim",
			"hrsh7th/cmp-nvim-lsp", -- lsp auto-completion
			"hrsh7th/cmp-buffer", -- buffer auto-completion
			"hrsh7th/cmp-path", -- path auto-completion
			"hrsh7th/cmp-cmdline", -- cmdline auto-completion
		},
		config = function()
			require("config.nvim-cmp")
		end,
	},
	-- Code snippet engine
	{
		"L3MON4D3/LuaSnip",
		version = "v2.*",
	},
    -- LSP manager
	"williamboman/mason.nvim",
	"williamboman/mason-lspconfig.nvim",
	"neovim/nvim-lspconfig",
})
