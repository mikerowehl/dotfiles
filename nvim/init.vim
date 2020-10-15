call plug#begin()

Plug 'fatih/vim-go'
Plug 'neoclide/coc.nvim', {'do': 'yarn install --frozen-lockfile'}

Plug 'tpope/vim-fugitive'

Plug 'junegunn/fzf'
Plug 'junegunn/fzf.vim'

Plug 'joshdick/onedark.vim'
Plug 'morhetz/gruvbox'

Plug 'vim-airline/vim-airline'

call plug#end()

set background=dark
colorscheme onedark
let g:airline_theme='onedark'
let g:airline_powerline_fonts=1

set shiftwidth=4
set tabstop=4
set termguicolors
set number relativenumber

ab :pushpin: 📌
ab :smile: 😀
ab :poo: 💩
ab :heart: ❤️
ab :thumbsup: 👍

runtime coc.vim
