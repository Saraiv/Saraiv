let mapleader=" "

call plug#begin()
" List of plugins
" Autocompletion
Plug 'neovim/nvim-lspconfig'
Plug 'neovim/nvim.net'
Plug 'hrsh7th/nvim-cmp'
Plug 'hrsh7th/cmp-nvim-lsp'
Plug 'VonHeikemen/lsp-zero.nvim', {'branch': 'v4.x'}

" COC
Plug 'neoclide/coc.nvim', { 'branch': 'release' }

" Nerdtree
Plug 'preservim/nerdtree', { 'on': 'NERDTreeToggle' }

" Barbar
Plug 'nvim-tree/nvim-web-devicons'
Plug 'lewis6991/gitsigns.nvim'
Plug 'romgrk/barbar.nvim'

" Icons
Plug 'ryanoasis/vim-devicons'

" Theme
Plug 'slugbyte/lackluster.nvim'

call plug#end()

" My basic settings
syntax on
set shiftwidth=4
set softtabstop=4
set number relativenumber
set noexpandtab

" Autocompletion
set wildmode=longest,list,full

set splitbelow splitright

" Mapping
" Telescope
map <leader>ff :Telescope find_files
map <leader>fb :Telescope buffers

" NERDTree
" map <leader>fe :NERDTree
map <leader>fe :NERDTreeToggle

" Autocompletion
inoremap <silent><expr> <tab> pumvisible() ? coc#_select_confirm() : "\<C-g>u\<TAB>"

" Colorscheme
color lackluster
