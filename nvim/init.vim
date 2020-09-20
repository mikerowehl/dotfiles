call plug#begin()

Plug 'fatih/vim-go'
Plug 'neoclide/coc.nvim', {'do': 'yarn install --frozen-lockfile'}

Plug 'tpope/vim-fugitive'

Plug 'morhetz/gruvbox'

call plug#end()

set shiftwidth=4
set tabstop=4

runtime coc.vim

:colorscheme gruvbox
