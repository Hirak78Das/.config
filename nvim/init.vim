" Basic Settings
set number                  " Show line numbers
set relativenumber          " Show relative line numbers
set tabstop=4               " Number of spaces that a <Tab> in the file counts for
set shiftwidth=4            " Number of spaces to use for each step of (auto)indent
set expandtab               " Use spaces instead of tabs
set smartindent             " Smart autoindenting when starting a new line
set termguicolors           " Enable 24-bit RGB color in the TUI
syntax on                   " Enable syntax highlighting
set belloff=


" Key Mappings
nnoremap <C-s> :w<CR>       " Save file with Ctrl+s
nnoremap <C-q> :q<CR>       " Quit nvim with Ctrl+q

" Initialize vim-plug
call plug#begin('~/.local/share/nvim/plugged')

" Example Plugins
Plug 'junegunn/fzf', { 'do': { -> fzf#install() } }
Plug 'junegunn/fzf.vim'
Plug 'tpope/vim-fugitive'
Plug 'scrooloose/nerdtree'
Plug 'itchyny/lightline.vim'
Plug 'hrsh7th/nvim-cmp'
Plug 'hrsh7th/cmp-nvim-lsp'
Plug 'hrsh7th/cmp-buffer'
Plug 'hrsh7th/cmp-path'
Plug 'saadparwaiz1/cmp_luasnip'
Plug 'L3MON4D3/LuaSnip'

" Initialize plugin system
call plug#end()

" Plugin Settings
let g:lightline = { 'colorscheme': 'wombat' }

" NERDTree settings
map <C-n> :NERDTreeToggle<CR>

" Lua configuration for nvim-cmp
lua << EOF
local cmp = require'cmp'
local luasnip = require'luasnip'

cmp.setup({
  snippet = {
    expand = function(args)
      luasnip.lsp_expand(args.body)
    end,
  },
  mapping = {
    ['<C-p>'] = cmp.mapping.select_prev_item(),
    ['<C-n>'] = cmp.mapping.select_next_item(),
    ['<C-y>'] = cmp.mapping.confirm({ select = true }),
    ['<C-e>'] = cmp.mapping.close(),
  },
  sources = {
    { name = 'buffer' },
    { name = 'path' },
    { name = 'luasnip' },
  },
})
EOF
