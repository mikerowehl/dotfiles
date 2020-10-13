call plug#begin()

Plug 'fatih/vim-go'
Plug 'neoclide/coc.nvim', {'do': 'yarn install --frozen-lockfile'}

Plug 'tpope/vim-fugitive'

Plug 'junegunn/fzf'
Plug 'junegunn/fzf.vim'

Plug 'joshdick/onedark.vim'
Plug 'morhetz/gruvbox'

call plug#end()

set background=dark
colorscheme onedark
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
