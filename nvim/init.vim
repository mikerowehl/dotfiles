call plug#begin()

Plug 'fatih/vim-go'
Plug 'neoclide/coc.nvim', {'do': 'yarn install --frozen-lockfile'}

Plug 'tpope/vim-fugitive'

Plug 'morhetz/gruvbox'
Plug 'drewtempelmeyer/palenight.vim'
Plug 'lifepillar/vim-solarized8'

call plug#end()

set background=dark
colorscheme gruvbox
set shiftwidth=4
set tabstop=4
set termguicolors
set number relativenumber

runtime coc.vim
