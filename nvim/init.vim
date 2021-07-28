call plug#begin()

Plug 'fatih/vim-go'
Plug 'neoclide/coc.nvim', {'do': 'yarn install --frozen-lockfile'}

Plug 'tpope/vim-fugitive'

Plug 'junegunn/fzf'
Plug 'junegunn/fzf.vim'

Plug 'joshdick/onedark.vim'
Plug 'morhetz/gruvbox'

Plug 'vim-airline/vim-airline'

Plug 'elixir-editors/vim-elixir'

Plug 'prettier/vim-prettier', { 'do': 'yarn install' }

Plug 'sheerun/vim-polyglot'

call plug#end()

set background=dark
colorscheme onedark
let g:airline_theme='onedark'
let g:airline_powerline_fonts=1

filetype plugin indent on
let g:html_indent_script1="auto"
let g:html_indent_style1="auto"

set shiftwidth=4
set tabstop=4
set termguicolors
set number relativenumber

autocmd Filetype javascript setlocal expandtab tabstop=2 shiftwidth=2 softtabstop=2
autocmd Filetype html setlocal expandtab tabstop=2 shiftwidth=2 softtabstop=2

let mapleader=","
nnoremap <silent> <Leader>r :Rg<CR>

ab :pushpin: 📌
ab :smile: 😀
ab :poo: 💩
ab :heart: ❤️
ab :thumbsup: 👍

runtime coc.vim
