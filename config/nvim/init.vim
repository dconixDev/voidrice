syntax on

let g:hybrid_custom_term_colors=1
set background=dark
colorscheme hybrid

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
"    set nowrap

" spelling n shit
    map <Leader>p :setlocal spell! spelllang=en_us<CR>

" removing white spaces
    autocmd BufWritePre * %s/\s\+$//e

" disable auto commenting
    autocmd FileType * setlocal formatoptions-=c formatoptions-=r formatoptions-=o

" cursor highlight line
hi CursorLine   cterm=NONE ctermbg=236
" hi CursorColumn cterm=NONE ctermbg=236
nnoremap <Leader>c :set cursorline! <CR>
" local cursor line
augroup CursorLine
  au!
  au VimEnter,WinEnter,BufWinEnter * setlocal cursorline
  au WinLeave * setlocal nocursorline
augroup END

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
    map zx :q!<CR>

    " replace all
    nnoremap S :%s//g<Left><Left>

    " for split navigation
    map <C-h> <C-w>h
    map <C-j> <C-w>j
    map <C-k> <C-w>k
    map <C-l> <C-w>l
