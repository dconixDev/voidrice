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
nnoremap <Leader>b :set cursorline! <CR>
" local cursor line
augroup CursorLine
  au!
  au VimEnter,WinEnter,BufWinEnter * setlocal cursorline
  au WinLeave * setlocal nocursorline
augroup END

" plugins
call plug#begin('~/.vim/plugged')
"
    Plug 'neoclide/coc.nvim', {'branch': 'release'}
"    Plug 'rust-lang/rust.vim'
    Plug 'vim-airline/vim-airline'
    Plug 'vim-airline/vim-airline-themes'
    Plug 'preservim/nerdcommenter'
    Plug 'preservim/nerdtree'

    call plug#end()

set noshowmode
let g:syntastic_rust_checkers = ['cargo']

""" Airline

    " Theme
    let g:airline_theme='deus'
    "let g:airline_theme='minimalist'

    " Tabline(messes with NERDTree)
    let g:airline#extensions#tabline#enabled = 1
    let g:airline#extensions#tabline#left_sep = ' '
    let g:airline#extensions#tabline#left_alt_sep = '|'
    let g:airline#extensions#tabline#formatter = 'unique_tail_improved'

" coc completion with tab
inoremap <silent><expr> <TAB>
      \ pumvisible() ? "\<C-n>" :
      \ <SID>check_back_space() ? "\<TAB>" :
      \ coc#refresh()
inoremap <expr><S-TAB> pumvisible() ? "\<C-p>" : "\<C-h>"


" remaps

    map <Leader>m :w<ESC>:! binrun %:t %:t <CR>
    " quick save and exit
    map zz :wq<CR>
    map zx :q!<CR>
    map zs :w<CR>

    " replace all
    nnoremap S :%s//g<Left><Left>

    " split navigation
    map <C-h> <C-w>h
    map <C-j> <C-w>j
    map <C-k> <C-w>k
    map <C-l> <C-w>l
    " resizing splits
    map <C-s>h 15<C-w><
    map <C-s>l 15<C-w>>
    map <C-s>j 5<C-w>-
    map <C-s>k 5<C-w>+

    " tab
    noremap <C-n>l :tabnext<CR>
    noremap <C-n>h :tabprevious<CR>

inoremap (  ()<ESC>hli
inoremap [  []<ESC>hli
inoremap {  {}<ESC>hli
"inoremap )  )<ESC>lxa
"inoremap ]  ]<ESC>lxa
"inoremap }  }<ESC>lxa

""" NERDTree

    " Keybinds
    nnoremap <leader>n :NERDTreeToggle<CR>
    " nnoremap <C-n> :NERDTree<CR>
    " nnoremap <C-t> :NERDTreeToggle<CR>
    " nnoremap <C-f> :NERDTreeFind<CR>

    " Start NERDTree. If a file is specified, move the cursor to its window.
    autocmd StdinReadPre * let s:std_in=1
    autocmd VimEnter * NERDTree | if argc() > 0 || exists("s:std_in") | wincmd p | endif

    " Exit Vim if NERDTree is the only window left.
    autocmd BufEnter * if tabpagenr('$') == 1 && winnr('$') == 1 && exists('b:NERDTree') && b:NERDTree.isTabTree() |
        \ quit | endif

    " Open the existing NERDTree on each new tab.
    autocmd BufWinEnter * silent NERDTreeMirror

    " Specify arrows
    let g:NERDTreeDirArrowExpandable = '▸'
    let g:NERDTreeDirArrowCollapsible = '▾'
