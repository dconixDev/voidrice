syntax on

set clipboard+=unnamedplus
set noswapfile

set nocompatible
set encoding=utf-8

" indentation and looks
    set number relativenumber
    set smartindent
    set smartcase
    set incsearch

set splitbelow splitright       " better window splitting
set wildmode=longest            " auto completion

" tabs and stuff
    set tabstop=4 softtabstop=4
    set shiftwidth=4
    set expandtab
    set nowrap

" spelling n shit
    map π :setlocal spell! spelllang=en_us<CR>

" removing white spaces
    autocmd BufWritePre * %s/\s\+$//e

" disable auto commenting
    autocmd FileType * setlocal formatoptions-=c formatoptions-=r formatoptions-=o

" plugins
"    call plug#begin('~/.vim/plugged')
"
"    Plug 'vim-airline/vim-airline'
"    Plug 'vim-airline/vim-airline-themes'
"
"    call plug#end()

" let g:airline_theme='deus'
" let g:airline_theme='minimalist'

" remaps

    " quick save and exit
    map zz :wq<CR>

    " replace all
    nnoremap S :%s//g<Left><Left>

    " for split navigation
    map <C-h> <C-w>h
    map <C-j> <C-w>j
    map <C-k> <C-w>k
    map <C-l> <C-w>l
