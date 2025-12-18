"                          _
"    _ __   ___  _____   _(_)_ __ ___
"   | '_ \ / _ \/ _ \ \ / / | '_ ` _ \
"   | | | |  __/ (_) \ V /| | | | | | |
"   |_| |_|\___|\___/ \_/ |_|_| |_| |_|
"
" By Sayujya Apte (2025)

set cursorline
set hidden
set number
set relativenumber
set termguicolors
set expandtab
set shiftwidth=4
set tabstop=4
set softtabstop=4
set incsearch
set hlsearch
set showmatch
set encoding=UTF-8

filetype plugin indent on

" Plugins
call plug#begin()
    Plug 'preservim/nerdtree'
    Plug 'preservim/nerdcommenter'
    Plug 'jiangmiao/auto-pairs'
    Plug 'ryanoasis/vim-devicons'
    Plug 'vim-airline/vim-airline'
    Plug 'vim-airline/vim-airline-themes'
    Plug 'catppuccin/nvim'
    Plug 'neoclide/coc.nvim', {'branch' : 'release'}
    Plug 'cdelledonne/vim-cmake'
    Plug 'ThePrimeagen/vim-be-good'
call plug#end()

nnoremap <silent> <Leader>n :set relativenumber!<CR>
nnoremap <silent> <Leader>w :wincmd p<CR>

" Visual
colorscheme catppuccin-mocha
let g:airline_theme='zenburn'

" NERDTree
autocmd StdinReadPre * let s:std_in=1
autocmd VimEnter * if argc() == 0 && !exists('s:std_in') | NERDTree | endif
nnoremap <silent> <Leader>t :NERDTreeToggle<CR>
autocmd BufEnter * if tabpagenr('$') == 1 && winnr('$') == 1 && exists('b:NERDTree') && b:NERDTree.isTabTree() | call feedkeys(":quit\<CR>:\<BS>") | endif

" NERDCommenter
let g:NERDSpaceDelims = 1
let g:NERDCompactSexyComs = 1
let g:NERDDefaultAlign = 'left'
let g:NERDCommentEmptyLines = 1
let g:NERDTrimTrailingWhitespace = 1

" CMake
nnoremap <silent> <Leader>c :e CMakeLists.txt<CR>
nnoremap <silent> <Leader>g :CMakeGenerate<CR>
nnoremap <silent> <Leader>b :CMakeBuild<CR>
nnoremap <silent> <Leader>x :CMakeClean<CR> 

