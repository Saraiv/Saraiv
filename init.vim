let mapleader=" "

call plug#begin()
" List of plugins
" Autocompletion
Plug 'neovim/nvim-lspconfig'
Plug 'neovim/nvim.net'
Plug 'hrsh7th/nvim-cmp'
Plug 'hrsh7th/cmp-nvim-lsp'
Plug 'VonHeikemen/lsp-zero.nvim', {'branch': 'v4.x'}
Plug 'prabirshrestha/asyncomplete.vim'

" COC
Plug 'neoclide/coc.nvim', { 'branch': 'release' }

" Nerdtree
Plug 'preservim/nerdtree', { 'on': 'NERDTreeToggle' }
Plug 'tiagofumo/vim-nerdtree-syntax-highlight'

" C#
Plug 'jmederosalvarado/roslyn.nvim'

" Feline
Plug 'feline-nvim/feline.nvim'

" Icons
Plug 'ryanoasis/vim-devicons'
Plug 'nvim-tree/nvim-web-devicons'
Plug 'lewis6991/gitsigns.nvim'
Plug 'vwxyutarooo/nerdtree-devicons-syntax'

" Theme
Plug 'slugbyte/lackluster.nvim'

call plug#end()

" My basic settings
syntax on
filetype indent plugin on
set termguicolors
set encoding=UTF-8
set shiftwidth=4
set softtabstop=4
set textwidth=80
set number relativenumber
set noexpandtab

" Autocompletion
set wildmode=longest,list,full

set splitbelow splitright

" Mapping
" NERDTree
" map <leader>fe :NERDTree
map <leader>fe :NERDTreeToggle <enter>

" Save file
map <C-s> :w <enter>

" Lua
lua <<EOF
require('gitsigns').setup()
require('feline').setup()
require('feline').winbar.setup()
EOF

" Autocompletion
inoremap <silent><expr> <tab> pumvisible() ? coc#_select_confirm() : "\<C-g>u\<TAB>"

" Colorscheme
color lackluster
